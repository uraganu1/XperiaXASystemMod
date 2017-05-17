.class public Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;
.super Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;
.source "ContactsListFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;
.implements Lcom/sonyericsson/android/socialphonebook/activities/listeners/OnNewIntentListener;
.implements Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog$DeleteContactsListener;
.implements Lcom/sonyericsson/android/socialphonebook/TabStateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$OnContactsListActionListener;,
        Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ContactLookupTask;,
        Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;,
        Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$InnerHandler;,
        Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$MemoryFullDialog;,
        Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$1;,
        Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;",
        ">;",
        "Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;",
        "Lcom/sonyericsson/android/socialphonebook/activities/listeners/OnNewIntentListener;",
        "Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog$DeleteContactsListener;",
        "Lcom/sonyericsson/android/socialphonebook/TabStateObserver;"
    }
.end annotation


# static fields
.field private static final AUTOSELECT_FIRST_FOUND_CONTACT_MIN_QUERY_LENGTH:I = 0x1

.field private static final CHECKED_CONTACTS_IDS:Ljava/lang/String; = "checkedContactsIds"

.field private static final DELAY_AUTOSELECT_FIRST_FOUND_CONTACT_MILLIS:I = 0x1f4

.field private static ENABLE_TRACEVIEW_MENU:Z = false

.field private static final FIRST_VISIBLE_ITEM_KEY:Ljava/lang/String; = "firstVisibleItem"

.field private static final IN_MARK_MODE:Ljava/lang/String; = "inMarkMode"

.field private static final KEY_CONTACT_COUNT:Ljava/lang/String; = "CONTACT_COUNT"

.field private static final KEY_GROUP_NAME:Ljava/lang/String; = "group_name"

.field private static final KEY_HAS_CONTACTS:Ljava/lang/String; = "hasContacts"

.field private static final KEY_LAST_SELECTED_POSITION:Ljava/lang/String; = "last_selected_position"

.field private static final KEY_SELECTED_URI:Ljava/lang/String; = "selected_uri"

.field private static final LOW_MEMORY_LIMIT:D

.field private static final MESSAGE_AUTOSELECT_FIRST_FOUND_CONTACT:I = -0x110012

.field public static final REQUEST_CODE_FOR_DELETE_PROCESS:I = 0x3e8

.field public static final REQUEST_CODE_FOR_SEND_PROCESS:I = 0x3e9

.field private static final SHARE_INTENT:Ljava/lang/String; = "shareContactsIntent"

.field public static final SUBACTIVITY_ADD_CONTACT:I = 0x4

.field private static final SUBACTIVITY_DISPLAY_GROUP:I = 0x2

.field private static final SUBACTIVITY_EDIT_CONTACT:I = 0x5

.field private static final SUBACTIVITY_VIEW_CONTACT:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeHandler:Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;

.field private mCheckedItemIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContactDataHelper:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;

.field private mContactLookupTask:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ContactLookupTask;

.field private mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

.field private final mDataContentObserver:Landroid/database/ContentObserver;

.field private mDelaySelection:Z

.field private mDisplayOnlyOnlineContacts:Z

.field private mDisplayOnlyPhones:Z

.field private mFeedbackSender:Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;

.field private mFirstVisibleItemPosition:I

.field private mGroupName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHasContacts:Z

.field private mHeaderViewICE:Landroid/view/View;

.field private mInMarkMode:Z

.field private mIntentShare:Landroid/content/Intent;

.field private mIsIceHeaderEnabled:Z

.field private mIsIceStarOfLifeIconEnabled:Z

.field private mIsStopSwiping:Z

.field private mIsTablet:Z

.field private mLastSelectedPosition:I

.field private mListener:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$OnContactsListActionListener;

.field private mMenu:Landroid/view/Menu;

.field private mMode:I

.field private final mOnQueryCompleteListener:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;

.field private mRefreshingContactUri:Z

.field private mSelectedContactDirectoryId:J

.field private mSelectedContactId:J

.field private mSelectedContactLookupKey:Ljava/lang/String;

.field private mSelectedContactUri:Landroid/net/Uri;

.field private mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

.field private mSelectionRequired:Z

.field private mSelectionToScreenRequested:Z

.field private mSelectionVerified:Z

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mShouldDisplayContactNotFoundDialog:Z

.field private mShowRcsData:Z

.field private mSmoothScrollRequested:Z

.field private mStartedLoading:Z

.field private mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

.field private mTabStateController:Lcom/sonyericsson/android/socialphonebook/TabStateController;

.field private mTrace:Z

.field private mVerizonCloudIsEnabled:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;)Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContactDataHelper:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;)Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mOnQueryCompleteListener:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;)Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mIntentShare:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->onItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;)[J
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getMarkedContacts()[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->updateButtonState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 163
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    .line 179
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->ENABLE_TRACEVIEW_MENU:Z

    .line 252
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    sput-wide v0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->LOW_MEMORY_LIMIT:D

    .line 127
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 383
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;-><init>()V

    .line 185
    const/16 v0, 0xa

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mMode:I

    .line 212
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mHasContacts:Z

    .line 224
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mLastSelectedPosition:I

    .line 227
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mTrace:Z

    .line 230
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mVerizonCloudIsEnabled:Z

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mCheckedItemIds:Ljava/util/List;

    .line 261
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mFirstVisibleItemPosition:I

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mMenu:Landroid/view/Menu;

    .line 278
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mIsStopSwiping:Z

    .line 301
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mDataContentObserver:Landroid/database/ContentObserver;

    .line 313
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$2;-><init>(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mOnQueryCompleteListener:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;

    .line 384
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setPhotoManagerEnabled(Z)V

    .line 385
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 383
    return-void
.end method

.method private allCheck(Z)V
    .locals 3
    .param p1, "aCheck"    # Z

    .prologue
    .line 1694
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 1695
    .local v2, "list":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->clearChoices()V

    .line 1696
    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 1697
    .local v0, "count":I
    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1698
    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1697
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1700
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->updateButtonState()V

    .line 1693
    return-void
.end method

.method private callOrSmsContact(Landroid/database/Cursor;ZZ)Z
    .locals 12
    .param p1, "aCursor"    # Landroid/database/Cursor;
    .param p2, "aSendSms"    # Z
    .param p3, "aEdit"    # Z

    .prologue
    .line 1393
    if-eqz p1, :cond_b

    .line 1394
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    .line 1395
    .local v6, "hasPhone":Z
    :goto_0
    if-nez v6, :cond_1

    .line 1397
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->signalError()V

    .line 1398
    const/4 v0, 0x0

    return v0

    .line 1394
    .end local v6    # "hasPhone":Z
    :cond_0
    const/4 v6, 0x0

    .restart local v6    # "hasPhone":Z
    goto :goto_0

    .line 1401
    :cond_1
    const/4 v9, 0x0

    .line 1402
    .local v9, "phone":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1403
    .local v11, "phonesCursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->queryPhoneNumbers(J)Landroid/database/Cursor;

    move-result-object v11

    .line 1404
    .local v11, "phonesCursor":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 1405
    :cond_2
    if-eqz v11, :cond_3

    .line 1406
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1409
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->signalError()V

    .line 1410
    const/4 v0, 0x0

    return v0

    .line 1411
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 1413
    const-string/jumbo v0, "data1"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1425
    .end local v9    # "phone":Ljava/lang/String;
    :cond_5
    :goto_1
    if-nez v9, :cond_8

    .line 1427
    new-instance v10, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v10, v0, v11, p2, p3}, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZZ)V

    .line 1429
    .local v10, "phoneDialog":Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;
    invoke-virtual {v10}, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->show()V

    .line 1446
    .end local v10    # "phoneDialog":Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 1415
    .restart local v9    # "phone":Ljava/lang/String;
    :cond_6
    const/4 v0, -0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1416
    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1417
    const-string/jumbo v0, "is_super_primary"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    .line 1419
    const-string/jumbo v0, "data1"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "phone":Ljava/lang/String;
    goto :goto_1

    .line 1431
    .end local v9    # "phone":Ljava/lang/String;
    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1432
    if-eqz p2, :cond_9

    .line 1433
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    invoke-static {v0, v9}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->initiateSms(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1434
    :cond_9
    if-eqz p3, :cond_a

    .line 1435
    const-string/jumbo v0, "tel"

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1436
    .local v8, "numberUri":Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.DIAL"

    invoke-direct {v7, v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1437
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 1439
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "numberUri":Landroid/net/Uri;
    :cond_a
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    .line 1440
    const v1, 0x7f0901cd

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1441
    const v2, 0x7f0901d7

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1442
    const-string/jumbo v3, ""

    const-wide/16 v4, 0x0

    .line 1439
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1443
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v9, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->initiateCall(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 1449
    .end local v6    # "hasPhone":Z
    .end local v11    # "phonesCursor":Landroid/database/Cursor;
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private checkSelection()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 1908
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionVerified:Z

    if-eqz v1, :cond_0

    .line 1909
    return-void

    .line 1912
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mRefreshingContactUri:Z

    if-eqz v1, :cond_1

    .line 1913
    return-void

    .line 1916
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v0

    .line 1917
    .local v0, "adapter":Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;
    if-nez v0, :cond_2

    .line 1918
    return-void

    .line 1921
    :cond_2
    const/4 v8, 0x1

    .local v8, "directoryLoading":Z
    const/4 v9, 0x0

    .line 1922
    .local v9, "found":Z
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getPartitionCount()I

    move-result v6

    .line 1923
    .local v6, "count":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v6, :cond_3

    .line 1924
    invoke-virtual {v0, v10}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getPartition(I)Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;

    move-result-object v11

    .line 1925
    .local v11, "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    instance-of v1, v11, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    if-eqz v1, :cond_4

    move-object v7, v11

    .line 1926
    check-cast v7, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;

    .line 1927
    .local v7, "directory":Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
    invoke-virtual {v7}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactDirectoryId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    .line 1928
    invoke-virtual {v7}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;->isLoading()Z

    move-result v8

    .line 1929
    .local v8, "directoryLoading":Z
    const/4 v9, 0x1

    .line 1935
    .end local v7    # "directory":Lcom/sonyericsson/android/socialphonebook/list/DirectoryPartition;
    .end local v8    # "directoryLoading":Z
    .end local v11    # "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    :cond_3
    if-eqz v8, :cond_5

    if-eqz v9, :cond_5

    .line 1936
    return-void

    .line 1923
    .local v8, "directoryLoading":Z
    .restart local v11    # "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1940
    .end local v8    # "directoryLoading":Z
    .end local v11    # "partition":Lcom/sonyericsson/android/socialphonebook/legacy/CompositeCursorAdapter$Partition;
    :cond_5
    iget-wide v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactDirectoryId:J

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactId:J

    .line 1939
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->setSelectedContact(JLjava/lang/String;J)V

    .line 1942
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getSelectedContactPosition()I

    move-result v12

    .line 1943
    .local v12, "selectedPosition":I
    const/4 v1, -0x1

    if-eq v12, v1, :cond_8

    .line 1944
    iput v12, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mLastSelectedPosition:I

    .line 1967
    :goto_1
    iput-boolean v13, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionRequired:Z

    .line 1968
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionVerified:Z

    .line 1970
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionToScreenRequested:Z

    if-eqz v1, :cond_6

    .line 1971
    invoke-virtual {p0, v12}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->requestSelectionToScreen(I)V

    .line 1974
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 1975
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$OnContactsListActionListener;

    if-eqz v1, :cond_7

    .line 1976
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$OnContactsListActionListener;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getSelectedContactUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$OnContactsListActionListener;->onSelectionChange(Landroid/net/Uri;)V

    .line 1907
    :cond_7
    return-void

    .line 1946
    :cond_8
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->isShowingSearchResult()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1947
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mDelaySelection:Z

    if-eqz v1, :cond_b

    .line 1948
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->selectFirstFoundContactAfterDelay()V

    .line 1949
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$OnContactsListActionListener;

    if-eqz v1, :cond_9

    .line 1950
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$OnContactsListActionListener;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getSelectedContactUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$OnContactsListActionListener;->onSelectionChange(Landroid/net/Uri;)V

    .line 1952
    :cond_9
    return-void

    .line 1954
    :cond_a
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionRequired:Z

    if-eqz v1, :cond_b

    .line 1955
    iput-boolean v13, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionRequired:Z

    .line 1956
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->reloadData()V

    .line 1957
    return-void

    .line 1960
    :cond_b
    iget-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactId:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mShouldDisplayContactNotFoundDialog:Z

    if-eqz v1, :cond_c

    .line 1961
    iput-boolean v13, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mShouldDisplayContactNotFoundDialog:Z

    .line 1962
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->showSelectedContactNotFound()V

    .line 1964
    :cond_c
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->selectDefaultContact()V

    goto :goto_1
.end method

.method private configureIceQuickContactBadge()V
    .locals 4

    .prologue
    .line 530
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mHeaderViewICE:Landroid/view/View;

    .line 531
    const v3, 0x7f0e00d6

    .line 530
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    .line 533
    .local v1, "iceContactPhoto":Landroid/widget/QuickContactBadge;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    .line 532
    invoke-static {v2}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v3

    .line 535
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mIsIceStarOfLifeIconEnabled:Z

    if-eqz v2, :cond_0

    .line 536
    sget-object v2, Lcom/android/contacts/photomanager/ContactPhotoManager;->ICE_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 532
    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getDefaultAvatarDrawableForContact(Lcom/android/contacts/photomanager/DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 539
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 541
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 529
    return-void

    .line 537
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    sget-object v2, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    goto :goto_0
.end method

.method private createIceContactsHeaderView()V
    .locals 5

    .prologue
    .line 512
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mIsIceHeaderEnabled:Z

    if-nez v2, :cond_0

    return-void

    .line 514
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 515
    .local v0, "contactsList":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 517
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04004a

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mHeaderViewICE:Landroid/view/View;

    .line 519
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->configureIceQuickContactBadge()V

    .line 521
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mHeaderViewICE:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 511
    return-void
.end method

.method private dismissDeleteDialog()V
    .locals 3

    .prologue
    .line 1685
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1687
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;->TAG:Ljava/lang/String;

    .line 1686
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 1688
    .local v0, "deleteConfirmationDialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 1689
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 1684
    :cond_0
    return-void
.end method

.method private dismissFragmentDialog(Ljava/lang/String;)V
    .locals 2
    .param p1, "dialogTag"    # Ljava/lang/String;

    .prologue
    .line 1893
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 1895
    .local v0, "dialogFragment":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 1896
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 1892
    :cond_0
    return-void
.end method

.method private displayImportExportDialog(I)V
    .locals 18
    .param p1, "type"    # I

    .prologue
    .line 1174
    if-nez p1, :cond_0

    .line 1175
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v12

    .line 1176
    .local v12, "path":Ljava/io/File;
    new-instance v13, Landroid/os/StatFs;

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1177
    .local v13, "stat":Landroid/os/StatFs;
    invoke-virtual {v13}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v6

    .line 1178
    .local v6, "blockSize":J
    invoke-virtual {v13}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    .line 1179
    .local v2, "availableBlocks":J
    mul-long v4, v2, v6

    .line 1182
    .local v4, "availableSpace":J
    long-to-double v14, v4

    sget-wide v16, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->LOW_MEMORY_LIMIT:D

    cmpg-double v14, v14, v16

    if-gez v14, :cond_0

    .line 1183
    sget-object v14, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "Import Available memory is less than 100MB"

    invoke-static {v14, v15}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$MemoryFullDialog;->newInstance()Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$MemoryFullDialog;

    move-result-object v8

    .line 1185
    .local v8, "dialog":Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$MemoryFullDialog;
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v14

    sget-object v15, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$MemoryFullDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v14, v15}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$MemoryFullDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1186
    return-void

    .line 1190
    .end local v2    # "availableBlocks":J
    .end local v4    # "availableSpace":J
    .end local v6    # "blockSize":J
    .end local v8    # "dialog":Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$MemoryFullDialog;
    .end local v12    # "path":Ljava/io/File;
    .end local v13    # "stat":Landroid/os/StatFs;
    :cond_0
    new-instance v11, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    const-class v15, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-direct {v11, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1191
    .local v11, "intent":Landroid/content/Intent;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1192
    .local v10, "exbundle":Landroid/os/Bundle;
    const-string/jumbo v14, "com.sonyericsson.android.socialphonebook.intent.extra.BACKUP_PROCESS"

    move/from16 v0, p1

    invoke-virtual {v10, v14, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1193
    invoke-virtual {v11, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1195
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    :goto_0
    return-void

    .line 1196
    :catch_0
    move-exception v9

    .line 1197
    .local v9, "e":Ljava/lang/Exception;
    sget-object v14, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fetchActionProvider()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 583
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mActionModeHandler:Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->getShareActionProvider()Landroid/widget/ShareActionProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 585
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v1, :cond_0

    .line 586
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$4;-><init>(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;)V

    .line 601
    .local v0, "listener":Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v1, v0}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 602
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 582
    .end local v0    # "listener":Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
    :cond_0
    return-void
.end method

.method private getCheckedCount()I
    .locals 12

    .prologue
    .line 648
    const/4 v0, 0x0

    .line 649
    .local v0, "checkedCount":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 650
    .local v1, "checks":Landroid/util/SparseBooleanArray;
    if-eqz v1, :cond_1

    .line 651
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 652
    .local v2, "count":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .line 653
    .local v4, "headViewCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 654
    invoke-virtual {v1, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    .line 655
    .local v6, "key":I
    if-lt v6, v4, :cond_0

    invoke-virtual {v1, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 656
    sub-int/2addr v6, v4

    .line 658
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;

    invoke-virtual {v7, v6}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->getItemId(I)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 659
    add-int/lit8 v0, v0, 0x1

    .line 653
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 661
    :catch_0
    move-exception v3

    .line 662
    .local v3, "e":Ljava/lang/IllegalStateException;
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getCheckedCount met error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    .end local v2    # "count":I
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    .end local v4    # "headViewCount":I
    .end local v5    # "i":I
    .end local v6    # "key":I
    :cond_1
    return v0
.end method

.method private getCheckedIds()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 672
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v5, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 674
    .local v0, "checks":Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_0

    .line 675
    return-object v5

    .line 677
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    .line 678
    .local v3, "headViewCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 679
    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    .line 680
    .local v8, "key":I
    if-lt v8, v3, :cond_1

    invoke-virtual {v0, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 681
    sub-int/2addr v8, v3

    .line 683
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;

    invoke-virtual {v9, v8}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->getItemId(I)J

    move-result-wide v6

    .line 684
    .local v6, "id":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-lez v9, :cond_1

    .line 685
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    .end local v6    # "id":J
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 687
    :catch_0
    move-exception v2

    .line 688
    .local v2, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCheckedIds met error:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "key":I
    :cond_2
    return-object v5
.end method

.method private getMarkedContacts()[J
    .locals 6

    .prologue
    .line 707
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getCheckedIds()Ljava/util/ArrayList;

    move-result-object v3

    .line 708
    .local v3, "markedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 709
    .local v0, "count":I
    new-array v2, v0, [J

    .line 710
    .local v2, "makredIds_long":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 711
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 710
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 713
    :cond_0
    return-object v2
.end method

.method private getShareIntent(I)Landroid/content/Intent;
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 1353
    if-gtz p1, :cond_0

    .line 1354
    const/4 v1, 0x0

    return-object v1

    .line 1357
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1358
    .local v0, "intentToBt":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1359
    const-string/jumbo v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1360
    const-string/jumbo v1, "CONTACT_COUNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1362
    return-object v0
.end method

.method private onDeleteButtonClicked()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 638
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getCheckedCount()I

    move-result v0

    .line 639
    .local v0, "checkedCount":I
    if-lez v0, :cond_0

    .line 640
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;->newInstance(I)Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;

    move-result-object v1

    .line 641
    .local v1, "deleteDialog":Landroid/app/DialogFragment;
    invoke-virtual {v1, p0, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 642
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/ui/ConfirmDeleteContactsDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 643
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 637
    .end local v1    # "deleteDialog":Landroid/app/DialogFragment;
    :cond_0
    return-void
.end method

.method private onItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, "result":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 508
    :goto_0
    return v0

    .line 502
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->onDeleteButtonClicked()V

    .line 503
    const/4 v0, 0x1

    .line 504
    goto :goto_0

    .line 500
    :pswitch_data_0
    .packed-switch 0x7f0e0261
        :pswitch_0
    .end packed-switch
.end method

.method private parseSelectedContactUri()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1829
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-eqz v4, :cond_4

    .line 1830
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 1831
    const-string/jumbo v5, "directory"

    .line 1830
    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1832
    .local v0, "directoryParam":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    iput-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactDirectoryId:J

    .line 1834
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1835
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 1836
    .local v1, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 1837
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1839
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactId:J

    .line 1828
    .end local v0    # "directoryParam":Ljava/lang/String;
    .end local v1    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-void

    .line 1833
    .restart local v0    # "directoryParam":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    .line 1841
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1842
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v7, :cond_3

    .line 1844
    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 1845
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactId:J

    goto :goto_1

    .line 1847
    :cond_3
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported contact URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 1849
    iput-wide v8, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactId:J

    goto :goto_1

    .line 1852
    .end local v0    # "directoryParam":Ljava/lang/String;
    :cond_4
    iput-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactDirectoryId:J

    .line 1853
    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 1854
    iput-wide v8, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactId:J

    goto :goto_1
.end method

.method private restoreCheckedItems()V
    .locals 10

    .prologue
    .line 1577
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v0

    .line 1578
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 1579
    .local v5, "listView":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 1580
    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1583
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1584
    .local v1, "count":I
    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    .line 1585
    .local v3, "headerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 1588
    :try_start_0
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mCheckedItemIds:Ljava/util/List;

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1589
    add-int v6, v4, v3

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1585
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1591
    :cond_1
    add-int v6, v4, v3

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1593
    :catch_0
    move-exception v2

    .line 1594
    .local v2, "e":Ljava/lang/IllegalStateException;
    sget-object v6, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreCheckedItems met error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->updateButtonState()V

    .line 1576
    return-void
.end method

.method private restoreMultiChoiceList()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1616
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->enterSelectionMode()V

    .line 1617
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->restoreCheckedItems()V

    .line 1618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mInMarkMode:Z

    .line 1620
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mFirstVisibleItemPosition:I

    if-eq v0, v2, :cond_0

    .line 1622
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mFirstVisibleItemPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1623
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mFirstVisibleItemPosition:I

    .line 1615
    :cond_0
    return-void
.end method

.method private setGroupMode()V
    .locals 4

    .prologue
    .line 841
    const/4 v0, 0x0

    .line 842
    .local v0, "groupName":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 843
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 844
    const-string/jumbo v2, "com.android.contacts.extra.GROUP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 846
    .end local v0    # "groupName":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 847
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "illegalArgument in intent : does not contains \'GROUP_NAME_EXTRA_KEY\'"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mMode:I

    .line 849
    return-void

    .line 852
    :cond_1
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mGroupName:Ljava/lang/String;

    .line 840
    return-void
.end method

.method private setHasContacts()V
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->hasContact()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mHasContacts:Z

    .line 492
    :cond_0
    return-void
.end method

.method private setIceHeaderVisibility()V
    .locals 4

    .prologue
    const v3, 0x7f0e00d5

    const/4 v2, 0x0

    .line 1602
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mIsIceHeaderEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1605
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mHeaderViewICE:Landroid/view/View;

    const v1, 0x7f0e00d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1607
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->isShowingSearchResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1608
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mHeaderViewICE:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1601
    :goto_0
    return-void

    .line 1610
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mHeaderViewICE:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMultiChoiceMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 615
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 616
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 617
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 619
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->stopSwiping(Z)V

    .line 621
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mIsStopSwiping:Z

    .line 614
    :cond_0
    return-void
.end method

.method private setNormalMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 626
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 627
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 628
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 630
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mIsStopSwiping:Z

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->stopSwiping(Z)V

    .line 634
    :cond_0
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mIsStopSwiping:Z

    .line 625
    return-void
.end method

.method private setSelectedContactUri(Landroid/net/Uri;ZZZ)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "required"    # Z
    .param p3, "smoothScroll"    # Z
    .param p4, "willReloadData"    # Z

    .prologue
    .line 1802
    iput-boolean p3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSmoothScrollRequested:Z

    .line 1803
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionToScreenRequested:Z

    .line 1805
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    .line 1807
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionVerified:Z

    .line 1808
    iput-boolean p2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionRequired:Z

    .line 1809
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 1810
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->parseSelectedContactUri()V

    .line 1812
    if-nez p4, :cond_1

    .line 1815
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v0

    .line 1816
    .local v0, "adapter":Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;
    if-eqz v0, :cond_1

    .line 1817
    iget-wide v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactDirectoryId:J

    .line 1818
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactId:J

    .line 1817
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->setSelectedContact(JLjava/lang/String;J)V

    .line 1819
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 1824
    .end local v0    # "adapter":Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->refreshSelectedContactUri()V

    .line 1801
    :cond_2
    :goto_0
    return-void

    .line 1806
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private setSelectedCountText(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f09022c

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1349
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mActionModeHandler:Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 1347
    return-void
.end method

.method private showSelectedContactNotFound()V
    .locals 3

    .prologue
    .line 1884
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->isSafeToCommitTransactions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1886
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ui/ContactNotFoundInListDialogFragment;->newInstance()Lcom/sonyericsson/android/socialphonebook/ui/ContactNotFoundInListDialogFragment;

    move-result-object v0

    .line 1887
    .local v0, "dialogFragment":Lcom/sonyericsson/android/socialphonebook/ui/ContactNotFoundInListDialogFragment;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ui/ContactNotFoundInListDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/ContactNotFoundInListDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1888
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1883
    .end local v0    # "dialogFragment":Lcom/sonyericsson/android/socialphonebook/ui/ContactNotFoundInListDialogFragment;
    :cond_0
    return-void
.end method

.method private updateButtonState()V
    .locals 15

    .prologue
    .line 1305
    const/4 v1, 0x0

    .line 1306
    .local v1, "checkedCount":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v11

    .line 1307
    .local v11, "listView":Landroid/widget/ListView;
    invoke-virtual {v11}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 1308
    .local v4, "checks":Landroid/util/SparseBooleanArray;
    invoke-virtual {v11}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v8

    .line 1309
    .local v8, "headerCount":I
    iget-object v12, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mCheckedItemIds:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 1310
    if-eqz v4, :cond_2

    .line 1311
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    .line 1312
    .local v6, "count":I
    const-wide/16 v2, -0x1

    .line 1313
    .local v2, "checkedContactId":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v6, :cond_2

    .line 1314
    invoke-virtual {v4, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    .line 1315
    .local v10, "key":I
    if-ge v10, v8, :cond_1

    .line 1317
    const/4 v12, 0x0

    invoke-virtual {v11, v10, v12}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1313
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1318
    :cond_1
    invoke-virtual {v4, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1319
    sub-int/2addr v10, v8

    .line 1321
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v12

    check-cast v12, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;

    invoke-virtual {v12, v10}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->getItemId(I)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1326
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-lez v12, :cond_0

    .line 1327
    add-int/lit8 v1, v1, 0x1

    .line 1328
    iget-object v12, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mCheckedItemIds:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1322
    :catch_0
    move-exception v7

    .line 1323
    .local v7, "e":Ljava/lang/IllegalStateException;
    sget-object v12, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateButtonState error:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    .end local v2    # "checkedContactId":J
    .end local v6    # "count":I
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    .end local v9    # "i":I
    .end local v10    # "key":I
    :cond_2
    iget-object v12, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v12, :cond_3

    .line 1335
    iget-object v12, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getShareIntent(I)Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 1338
    :cond_3
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setSelectedCountText(I)V

    .line 1339
    iget-object v13, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mActionModeHandler:Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;

    if-lez v1, :cond_4

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v13, v12}, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->visibleMenuItem(Z)V

    .line 1340
    sget-object v12, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "checked count:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/ListView;->getCount()I

    move-result v12

    sub-int v5, v12, v8

    .line 1342
    .local v5, "contactsCount":I
    if-lez v5, :cond_5

    if-ne v1, v5, :cond_5

    const/4 v0, 0x1

    .line 1343
    .local v0, "allMarked":Z
    :goto_3
    iget-object v12, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mActionModeHandler:Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;

    invoke-virtual {v12, v0}, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->updateSelectionMenu(Z)V

    .line 1304
    return-void

    .line 1339
    .end local v0    # "allMarked":Z
    .end local v5    # "contactsCount":I
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 1342
    .restart local v5    # "contactsCount":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "allMarked":Z
    goto :goto_3
.end method


# virtual methods
.method protected final callContact(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 1380
    invoke-direct {p0, p1, v0, v0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->callOrSmsContact(Landroid/database/Cursor;ZZ)Z

    move-result v0

    return v0
.end method

.method protected configureAdapter()V
    .locals 3

    .prologue
    .line 1629
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->configureAdapter()V

    .line 1631
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;

    .line 1632
    .local v0, "adapter":Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;
    if-nez v0, :cond_0

    .line 1633
    return-void

    .line 1636
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->isShowingSearchResult()Z

    move-result v1

    .line 1637
    .local v1, "searchMode":Z
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->setIncludeProfile(Z)V

    .line 1638
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mMode:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->setMode(I)V

    .line 1639
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->setGroupName(Ljava/lang/String;)V

    .line 1640
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mDisplayOnlyPhones:Z

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->setDisplayOnlyPhones(Z)V

    .line 1641
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mDisplayOnlyOnlineContacts:Z

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->setDisplayOnlyOnlineContacts(Z)V

    .line 1628
    return-void

    .line 1637
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public createCursorLoader()Landroid/content/CursorLoader;
    .locals 2

    .prologue
    .line 1528
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/list/ProfileAndContactsLoader;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ProfileAndContactsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createListAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;
    .locals 3

    .prologue
    .line 1533
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContactDataHelper:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;)V

    .line 1534
    .local v0, "adapter":Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 1535
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mShowRcsData:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->setShowRcsData(Z)V

    .line 1536
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->setDisplayPhotos(Z)V

    .line 1537
    return-object v0
.end method

.method protected bridge synthetic createListAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;
    .locals 1

    .prologue
    .line 1532
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->createListAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 546
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$3;-><init>(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;)V

    return-object v0
.end method

.method public forceUpdateContent()V
    .locals 0

    .prologue
    .line 1370
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->reloadData()V

    .line 1369
    return-void
.end method

.method protected getDisplayOnlineContacts()Z
    .locals 1

    .prologue
    .line 1506
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mDisplayOnlyOnlineContacts:Z

    return v0
.end method

.method protected getDisplayPhones()Z
    .locals 1

    .prologue
    .line 1494
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mDisplayOnlyPhones:Z

    return v0
.end method

.method public getSearchMode()Z
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->isSearchMode()Z

    move-result v0

    return v0
.end method

.method public getSelectedContactUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSelectedCount()I
    .locals 1

    .prologue
    .line 1705
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getCheckedCount()I

    move-result v0

    return v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 1523
    const v0, 0x7f040048

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isMarkMode()Z
    .locals 1

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->inSelectionMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadPreferences()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 883
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->loadPreferences()Z

    move-result v0

    .line 884
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 885
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "only_phones"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 886
    .local v2, "displayOnlyPhones":Z
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getDisplayPhones()Z

    move-result v4

    if-eq v4, v2, :cond_0

    .line 887
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setDisplayPhones(Z)V

    .line 888
    const/4 v0, 0x1

    .line 891
    .end local v0    # "changed":Z
    :cond_0
    const-string/jumbo v4, "online_contacts"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 892
    .local v1, "displayOnlyOnline":Z
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getDisplayOnlineContacts()Z

    move-result v4

    if-eq v4, v1, :cond_1

    .line 893
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setDisplayOnlineContacts(Z)V

    .line 894
    const/4 v0, 0x1

    .line 897
    :cond_1
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 718
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 720
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    .line 721
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->setSelectionListener(Lcom/sonyericsson/android/socialphonebook/util/SelectionManager$SelectionListener;)V

    .line 722
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;-><init>(Landroid/app/Activity;Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mActionModeHandler:Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;

    .line 723
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 724
    .local v0, "list":Landroid/widget/ListView;
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 725
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 727
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    instance-of v1, v1, Lcom/sonyericsson/android/socialphonebook/TabStateController;

    if-eqz v1, :cond_0

    .line 728
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/TabStateController;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mTabStateController:Lcom/sonyericsson/android/socialphonebook/TabStateController;

    .line 729
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mTabStateController:Lcom/sonyericsson/android/socialphonebook/TabStateController;

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CONTACTS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    invoke-interface {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/TabStateController;->register(Lcom/sonyericsson/android/socialphonebook/TabStateObserver;Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;)V

    .line 732
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 734
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 736
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "aRequestCode"    # I
    .param p2, "aResultCode"    # I
    .param p3, "aData"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 1216
    sparse-switch p1, :sswitch_data_0

    .line 1215
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1218
    :sswitch_1
    if-ne p2, v3, :cond_0

    .line 1219
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1226
    :sswitch_2
    if-eqz p3, :cond_0

    .line 1227
    if-ne p2, v3, :cond_0

    .line 1228
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setSelectedContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 1233
    :sswitch_3
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    .line 1234
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    .line 1236
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->reloadData()V

    .line 1237
    if-eqz p3, :cond_0

    .line 1239
    const-string/jumbo v3, "result_list"

    .line 1238
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1240
    .local v2, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;>;"
    if-eqz v2, :cond_0

    .line 1241
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;

    invoke-direct {v1, v4}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;-><init>(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;)V

    .line 1242
    .local v1, "callBack":Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;
    invoke-static {v1, v6}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->-set0(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;I)I

    .line 1243
    invoke-static {v1, v7}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->-set4(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;I)I

    .line 1244
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 1245
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->-get0(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;)I

    move-result v4

    .line 1244
    invoke-static {v3, v4, v2, v1}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->show(Landroid/app/FragmentManager;ILjava/util/ArrayList;Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;)V

    goto :goto_0

    .line 1250
    .end local v1    # "callBack":Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;
    .end local v2    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;>;"
    :sswitch_4
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_2

    .line 1251
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    .line 1254
    :cond_2
    if-eqz p3, :cond_0

    .line 1256
    const-string/jumbo v3, "result_list"

    .line 1255
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1258
    .restart local v2    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/util/ParcelableContactItem;>;"
    const-string/jumbo v3, "all_encode_failed"

    .line 1257
    invoke-virtual {p3, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1259
    .local v0, "allFailed":Z
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;

    invoke-direct {v1, v4}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;-><init>(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;)V

    .line 1260
    .restart local v1    # "callBack":Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;
    const-string/jumbo v3, "send_vcard_file"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->-set2(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;Ljava/lang/String;)Ljava/lang/String;

    .line 1261
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->-set1(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;Landroid/app/Activity;)Landroid/app/Activity;

    .line 1262
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mIntentShare:Landroid/content/Intent;

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->-set3(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;Landroid/content/Intent;)Landroid/content/Intent;

    .line 1264
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v6, :cond_4

    .line 1265
    if-eqz v0, :cond_3

    .line 1266
    invoke-static {v1, v7}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->-set0(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;I)I

    .line 1271
    :goto_1
    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->-set4(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;I)I

    .line 1272
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 1273
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->-get0(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;)I

    move-result v4

    .line 1272
    invoke-static {v3, v4, v2, v1}, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->show(Landroid/app/FragmentManager;ILjava/util/ArrayList;Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;)V

    goto/16 :goto_0

    .line 1268
    :cond_3
    invoke-static {v1, v5}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->-set0(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;I)I

    goto :goto_1

    .line 1275
    :cond_4
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ResultDialogCallBack;->startActivityByIntent()V

    goto/16 :goto_0

    .line 1216
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x3e8 -> :sswitch_3
        0x3e9 -> :sswitch_4
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x1

    .line 741
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 743
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 744
    .local v0, "hkh":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 745
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    if-ne v0, v2, :cond_0

    .line 747
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    goto :goto_0
.end method

.method protected onContactUriQueryFinished(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1901
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mRefreshingContactUri:Z

    .line 1902
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 1903
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->parseSelectedContactUri()V

    .line 1904
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->checkSelection()V

    .line 1900
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "aIcicle"    # Landroid/os/Bundle;

    .prologue
    .line 390
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 391
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 392
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setHasOptionsMenu(Z)V

    .line 394
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v0

    .line 396
    .local v0, "configuration":Lcom/sonyericsson/android/socialphonebook/Configuration;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 397
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mIsTablet:Z

    .line 399
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isIceContactsEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mIsIceHeaderEnabled:Z

    .line 400
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isIceStarOfLifeIconEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mIsIceStarOfLifeIconEnabled:Z

    .line 403
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 407
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.contacts.extra.TITLE_EXTRA"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, "title":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 409
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 412
    :cond_0
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mFeedbackSender:Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;

    .line 413
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;-><init>(Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContactDataHelper:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;

    .line 414
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isRcsTapiEnabled(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mShowRcsData:Z

    .line 416
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1029
    const v0, 0x7f110002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1028
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 421
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$InnerHandler;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$InnerHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mHandler:Landroid/os/Handler;

    .line 423
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 424
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 429
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 430
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->createIceContactsHeaderView()V

    .line 428
    return-void
.end method

.method protected onCursorLoaded(ILandroid/database/Cursor;)V
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1542
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onCursorLoaded(ILandroid/database/Cursor;)V

    .line 1544
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mHasContacts:Z

    .line 1545
    .local v1, "hadContacts":Z
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->hasContact()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mHasContacts:Z

    .line 1547
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mMenu:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->hasContact()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1548
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mMenu:Landroid/view/Menu;

    const v3, 0x7f0e0241

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1549
    .local v0, "export":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1550
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1554
    .end local v0    # "export":Landroid/view/MenuItem;
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setIceHeaderVisibility()V

    .line 1556
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mInMarkMode:Z

    if-eqz v2, :cond_3

    .line 1557
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->restoreMultiChoiceList()V

    .line 1562
    :cond_1
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionVerified:Z

    .line 1564
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->refreshSelectedContactUri()V

    .line 1566
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mHasContacts:Z

    if-eq v1, v2, :cond_2

    .line 1568
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 1541
    :cond_2
    return-void

    .line 1558
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1

    .line 1559
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->restoreCheckedItems()V

    goto :goto_0
.end method

.method public onDeleteContacts()V
    .locals 4

    .prologue
    .line 698
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    const-class v3, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 699
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getMarkedContacts()[J

    move-result-object v1

    .line 700
    .local v1, "markedContacts":[J
    array-length v2, v1

    if-lez v2, :cond_0

    .line 701
    const-string/jumbo v2, "checked_ids"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 702
    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 697
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 773
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->stopObservering()V

    .line 777
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->destroy()V

    .line 778
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    if-eqz v0, :cond_1

    .line 782
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->unregisterContentObserver()V

    .line 783
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->destroy()V

    .line 784
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    .line 787
    :cond_1
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onDestroy()V

    .line 789
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 772
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mHandler:Landroid/os/Handler;

    const v1, -0x110012

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 795
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mHandler:Landroid/os/Handler;

    .line 796
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onDestroyView()V

    .line 793
    return-void
.end method

.method protected onHeaderClick(Landroid/view/View;IJ)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 567
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 569
    return-void

    .line 572
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e00d4

    if-ne v1, v2, :cond_1

    .line 573
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    const-class v2, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 574
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->startActivity(Landroid/content/Intent;)V

    .line 566
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method protected onItemClick(Landroid/view/View;IJ)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v5, 0x0

    .line 1287
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_0

    .line 1288
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->updateButtonState()V

    .line 1289
    return-void

    .line 1292
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p3, p4}, Lcom/sonyericsson/android/socialphonebook/util/ContactCapabilityRequest;->executeRequest(Landroid/content/Context;J)V

    .line 1293
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;

    invoke-virtual {v3, p2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 1294
    .local v0, "contactUri":Landroid/net/Uri;
    invoke-direct {p0, v0, v5, v5, v5}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZ)V

    .line 1295
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$OnContactsListActionListener;

    if-eqz v3, :cond_1

    .line 1296
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$OnContactsListActionListener;

    invoke-interface {v3, v0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$OnContactsListActionListener;->onViewContactAction(Landroid/net/Uri;)V

    .line 1297
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 1298
    .local v1, "focusedView":Landroid/view/View;
    if-nez v1, :cond_2

    const/4 v2, 0x0

    .line 1299
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1286
    .end local v1    # "focusedView":Landroid/view/View;
    :cond_1
    return-void

    .line 1298
    .restart local v1    # "focusedView":Landroid/view/View;
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .local v2, "iBinder":Landroid/os/IBinder;
    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 470
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 471
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionVerified:Z

    .line 473
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setHasContacts()V

    .line 476
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->refreshSelectedContactUri()V

    .line 478
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 479
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 480
    return-void

    .line 484
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->reportFullyDrawn()V

    .line 485
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Success reportFullyDrawn()"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v1

    .line 488
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error reportFullyDrawn(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNewIntent()V
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->leaveSelectionMode()V

    .line 756
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mInMarkMode:Z

    .line 752
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "aItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1163
    :pswitch_0
    return v1

    .line 1119
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    const-class v4, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1120
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "extra_write_only_mode"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1121
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1166
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 1124
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    const-class v3, Lcom/sonyericsson/android/socialphonebook/SpbPreferenceActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1125
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1128
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->displayImportExportDialog(I)V

    goto :goto_0

    .line 1131
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->displayImportExportDialog(I)V

    goto :goto_0

    .line 1134
    :pswitch_5
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils;->getCloudLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1135
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1138
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    const-class v3, Lcom/sonyericsson/android/socialphonebook/ui/ContactsFilterActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1139
    .restart local v0    # "intent":Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1142
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_7
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mTrace:Z

    if-nez v3, :cond_0

    .line 1143
    const-string/jumbo v3, "phonebook_contacts"

    invoke-static {v3}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 1144
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    const-string/jumbo v4, "trace start"

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1149
    :goto_1
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mTrace:Z

    if-eqz v3, :cond_1

    :goto_2
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mTrace:Z

    goto :goto_0

    .line 1146
    :cond_0
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 1147
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    const-string/jumbo v4, "trace stop"

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1149
    goto :goto_2

    .line 1152
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.contacts.action.FIND_PROCESS_ALL_CONTACTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1153
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1156
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_9
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->enterSelectionMode()V

    .line 1157
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->updateButtonState()V

    goto :goto_0

    .line 1160
    :pswitch_a
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mFeedbackSender:Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;->startFeedbackActivity()V

    goto :goto_0

    .line 1115
    :pswitch_data_0
    .packed-switch 0x7f0e023c
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_6
        :pswitch_8
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 954
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mActionModeHandler:Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->visibleMenuItem(Z)V

    .line 955
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mActionModeHandler:Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->setActionModeListener(Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler$ActionModeListener;)V

    .line 957
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->pause()V

    .line 961
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->setSyncCallStatusLoaderInterface(Lcom/sonyericsson/android/socialphonebook/addressbookplus/ISyncCallStatusLoad;)V

    .line 962
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onPause()V

    .line 952
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 11
    .param p1, "aMenu"    # Landroid/view/Menu;

    .prologue
    const v10, 0x7f0e0245

    const v9, 0x7f0e0241

    const v5, 0x7f0e0240

    const/4 v8, 0x0

    .line 1034
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 1035
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 1036
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1037
    return-void

    .line 1040
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1042
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mMenu:Landroid/view/Menu;

    .line 1044
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mMode:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mMode:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 1047
    .local v0, "defaultMode":Z
    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1049
    :cond_2
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1050
    return-void

    .line 1044
    .end local v0    # "defaultMode":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "defaultMode":Z
    goto :goto_0

    .line 1048
    :cond_4
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1052
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1053
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1054
    const v3, 0x7f0e0244

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1055
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1056
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1058
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mIsTablet:Z

    if-eqz v3, :cond_6

    .line 1060
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getSearchMode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1061
    const v3, 0x7f0e023e

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1067
    :goto_1
    iget-wide v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactDirectoryId:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    .line 1068
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1069
    const v3, 0x7f0e0243

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1073
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isModifyAccountsDisallowed(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1074
    const v3, 0x7f0e023f

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1078
    :cond_6
    if-eqz v0, :cond_7

    .line 1079
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mHasContacts:Z

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1080
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mHasContacts:Z

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1081
    const v3, 0x7f0e023b

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1082
    .local v1, "helpItem":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    const v4, 0x7f090058

    invoke-static {v3, v1, v4}, Lcom/android/contacts/util/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    .line 1085
    .end local v1    # "helpItem":Landroid/view/MenuItem;
    :cond_7
    const v3, 0x7f0e0247

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1086
    .local v2, "item":Landroid/view/MenuItem;
    sget-boolean v3, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->ENABLE_TRACEVIEW_MENU:Z

    if-eqz v3, :cond_a

    .line 1087
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1088
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mTrace:Z

    if-eqz v3, :cond_9

    .line 1089
    const-string/jumbo v3, "Traceview OFF"

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1097
    :goto_2
    const v3, 0x7f0e0242

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mVerizonCloudIsEnabled:Z

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1099
    const v3, 0x7f0e023c

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mFeedbackSender:Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/util/FeedbackSender;->canSendFeedback()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1101
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1033
    return-void

    .line 1063
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_8
    const v3, 0x7f0e023e

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1091
    .restart local v2    # "item":Landroid/view/MenuItem;
    :cond_9
    const-string/jumbo v3, "Traceview ON"

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_2

    .line 1094
    :cond_a
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 905
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 907
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 908
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->updateButtonState()V

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mActionModeHandler:Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$5;-><init>(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->setActionModeListener(Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler$ActionModeListener;)V

    .line 918
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    if-eqz v0, :cond_1

    .line 919
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->resume()V

    .line 922
    :cond_1
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onResume()V

    .line 924
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils;->isCloudEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mVerizonCloudIsEnabled:Z

    .line 927
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mTabStateController:Lcom/sonyericsson/android/socialphonebook/TabStateController;

    if-eqz v0, :cond_2

    .line 928
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mTabStateController:Lcom/sonyericsson/android/socialphonebook/TabStateController;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/TabStateController;->getSelectedTab()Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CONTACTS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    if-eq v0, v1, :cond_2

    .line 929
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->dismissFragmentDialog(Ljava/lang/String;)V

    .line 932
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->isKddiAddressBookFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 933
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    if-nez v0, :cond_4

    .line 934
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;-><init>(Landroid/content/Context;Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    .line 935
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->registerContentObserver()V

    .line 936
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->setSyncCallStatusLoaderInterface(Lcom/sonyericsson/android/socialphonebook/addressbookplus/ISyncCallStatusLoad;)V

    .line 937
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->updateSyncCallSettingsStatusFlag(Landroid/content/Context;)V

    .line 938
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->performCachingForSyncContact(Landroid/widget/BaseAdapter;)V

    .line 945
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->inSelectionMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->setMarkMode(Z)V

    .line 946
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 948
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 904
    return-void

    .line 940
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;->updateSyncCallSettingsStatusFlag(Landroid/content/Context;)V

    .line 941
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSyncCallStatusManager:Lcom/sonyericsson/android/socialphonebook/addressbookplus/SyncCallStatusManager;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->setSyncCallStatusLoaderInterface(Lcom/sonyericsson/android/socialphonebook/addressbookplus/ISyncCallStatusLoad;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "aIcicle"    # Landroid/os/Bundle;

    .prologue
    .line 999
    const-string/jumbo v6, "group_name"

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mGroupName:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const-string/jumbo v6, "selected_uri"

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1001
    const-string/jumbo v6, "last_selected_position"

    iget v7, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mLastSelectedPosition:I

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1002
    const-string/jumbo v6, "hasContacts"

    iget-boolean v7, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mHasContacts:Z

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1004
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->inSelectionMode()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1005
    const-string/jumbo v6, "inMarkMode"

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1008
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mCheckedItemIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 1009
    .local v3, "count":I
    if-lez v3, :cond_1

    .line 1010
    new-array v0, v3, [J

    .line 1011
    .local v0, "checkedContactsIds":[J
    const/4 v4, 0x0

    .line 1012
    .local v4, "i":I
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mCheckedItemIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "contactId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1013
    .local v1, "contactId":Ljava/lang/Long;
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v0, v4

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 1017
    .end local v1    # "contactId":Ljava/lang/Long;
    :cond_0
    const-string/jumbo v6, "checkedContactsIds"

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1020
    .end local v0    # "checkedContactsIds":[J
    .end local v2    # "contactId$iterator":Ljava/util/Iterator;
    .end local v4    # "i":I
    :cond_1
    const-string/jumbo v6, "shareContactsIntent"

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mIntentShare:Landroid/content/Intent;

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1021
    const-string/jumbo v6, "firstVisibleItem"

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1024
    .end local v3    # "count":I
    :cond_2
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 998
    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1650
    packed-switch p1, :pswitch_data_0

    .line 1649
    :goto_0
    return-void

    .line 1652
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mActionModeHandler:Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/ActionModeHandler;->startActionMode()Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mActionMode:Landroid/view/ActionMode;

    .line 1654
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->setMarkMode(Z)V

    .line 1655
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setMultiChoiceMode()V

    .line 1656
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->fetchActionProvider()V

    .line 1657
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->onSelectionModeEntered(Z)V

    goto :goto_0

    .line 1662
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v0, v3}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 1663
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1664
    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mActionMode:Landroid/view/ActionMode;

    .line 1665
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->setMarkMode(Z)V

    .line 1666
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setNormalMode()V

    .line 1667
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->dismissDeleteDialog()V

    .line 1668
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->onSelectionModeEntered(Z)V

    goto :goto_0

    .line 1672
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionManager:Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/SelectionManager;->inSelectAllMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->allCheck(Z)V

    goto :goto_0

    .line 1650
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 435
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onStart()V

    .line 436
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mShowRcsData:Z

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 438
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mDataContentObserver:Landroid/database/ContentObserver;

    .line 437
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 439
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContactDataHelper:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->RCS_CONTACTS:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mOnQueryCompleteListener:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->queryAsync(Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;)V

    .line 434
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 761
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->onStop()V

    .line 762
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mShowRcsData:Z

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContactDataHelper:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->RCS_CONTACTS:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->cancelQuery(Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;)V

    .line 764
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mDataContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 760
    :cond_0
    return-void
.end method

.method public onTabChanged(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;Z)V
    .locals 1
    .param p1, "tab"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    .param p2, "selected"    # Z

    .prologue
    .line 2058
    if-eqz p2, :cond_0

    .line 2059
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->resume()V

    .line 2057
    :cond_0
    return-void
.end method

.method protected final queryPhoneNumbers(J)Landroid/database/Cursor;
    .locals 11
    .param p1, "aContactId"    # J

    .prologue
    .line 1466
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1467
    .local v6, "baseUri":Landroid/net/Uri;
    const-string/jumbo v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1469
    .local v1, "dataUri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 1471
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 1472
    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "data1"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "is_super_primary"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 1473
    const-string/jumbo v3, "mimetype=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 1474
    const-string/jumbo v5, "vnd.android.cursor.item/phone_v2"

    const/4 v9, 0x0

    aput-object v5, v4, v9

    .line 1475
    const/4 v5, 0x0

    .line 1471
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1477
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1478
    return-object v7

    .line 1479
    :cond_0
    if-eqz v7, :cond_1

    .line 1480
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1481
    const/4 v7, 0x0

    .line 1490
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v7

    .line 1483
    :catch_0
    move-exception v8

    .line 1484
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_1

    .line 1485
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1486
    const/4 v7, 0x0

    .local v7, "c":Landroid/database/Cursor;
    goto :goto_0
.end method

.method protected refreshSelectedContactUri()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1859
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContactLookupTask:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ContactLookupTask;

    if-eqz v1, :cond_0

    .line 1860
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContactLookupTask:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ContactLookupTask;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ContactLookupTask;->cancel()V

    .line 1863
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->isSelectionVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1864
    return-void

    .line 1867
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mRefreshingContactUri:Z

    .line 1869
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 1870
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->onContactUriQueryFinished(Landroid/net/Uri;)V

    .line 1871
    return-void

    .line 1874
    :cond_2
    iget-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactDirectoryId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 1875
    iget-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactDirectoryId:J

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 1876
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->onContactUriQueryFinished(Landroid/net/Uri;)V

    .line 1858
    :goto_0
    return-void

    .line 1878
    :cond_3
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ContactLookupTask;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ContactLookupTask;-><init>(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContactLookupTask:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ContactLookupTask;

    .line 1879
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mContactLookupTask:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ContactLookupTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$ContactLookupTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected reloadData()V
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mStartedLoading:Z

    if-eqz v0, :cond_0

    .line 461
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mLastSelectedPosition:I

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionVerified:Z

    .line 464
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->reloadData()V

    .line 459
    :cond_0
    return-void
.end method

.method protected requestSelectionToScreen(I)V
    .locals 3
    .param p1, "selectedPosition"    # I

    .prologue
    .line 2017
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 2018
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;

    .line 2020
    .local v0, "listView":Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSmoothScrollRequested:Z

    .line 2019
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;->requestPositionToScreen(IZ)V

    .line 2021
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionToScreenRequested:Z

    .line 2016
    .end local v0    # "listView":Lcom/sonyericsson/android/socialphonebook/widget/AutoScrollListView;
    :cond_0
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 967
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 969
    if-eqz p1, :cond_2

    .line 970
    const-string/jumbo v3, "group_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mGroupName:Ljava/lang/String;

    .line 971
    const-string/jumbo v3, "selected_uri"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 972
    const-string/jumbo v3, "last_selected_position"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mLastSelectedPosition:I

    .line 973
    const-string/jumbo v3, "inMarkMode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mInMarkMode:Z

    .line 974
    const-string/jumbo v3, "hasContacts"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mHasContacts:Z

    .line 976
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mInMarkMode:Z

    if-eqz v3, :cond_1

    .line 977
    const-string/jumbo v3, "checkedContactsIds"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    .line 978
    .local v2, "checkedContactsIds":[J
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 979
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-wide v0, v2, v3

    .line 980
    .local v0, "checkedContactId":J
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mCheckedItemIds:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 983
    .end local v0    # "checkedContactId":J
    :cond_0
    const-string/jumbo v3, "shareContactsIntent"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mIntentShare:Landroid/content/Intent;

    .line 984
    const-string/jumbo v3, "firstVisibleItem"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mFirstVisibleItemPosition:I

    .line 987
    .end local v2    # "checkedContactsIds":[J
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->parseSelectedContactUri()V

    .line 966
    :cond_2
    return-void
.end method

.method protected selectDefaultContact()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1995
    const/4 v1, 0x0

    .line 1996
    .local v1, "contactUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v0

    .line 1997
    .local v0, "adapter":Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;
    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mLastSelectedPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 1998
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getCount()I

    move-result v2

    .line 1999
    .local v2, "count":I
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mLastSelectedPosition:I

    .line 2000
    .local v3, "pos":I
    if-lt v3, v2, :cond_0

    if-lez v2, :cond_0

    .line 2001
    add-int/lit8 v3, v2, -0x1

    .line 2003
    :cond_0
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 2006
    .end local v1    # "contactUri":Landroid/net/Uri;
    .end local v2    # "count":I
    .end local v3    # "pos":I
    :cond_1
    if-nez v1, :cond_2

    .line 2007
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;->getFirstContactUri()Landroid/net/Uri;

    move-result-object v1

    .line 2008
    .local v1, "contactUri":Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 2009
    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->requestSelectionToScreen(I)V

    .line 2013
    .end local v1    # "contactUri":Landroid/net/Uri;
    :cond_2
    iget-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSmoothScrollRequested:Z

    invoke-direct {p0, v1, v6, v4, v6}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZ)V

    .line 1994
    return-void
.end method

.method public selectFirstFoundContactAfterDelay()V
    .locals 6

    .prologue
    const v5, -0x110012

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1981
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    return-void

    .line 1982
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1984
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    .line 1985
    .local v0, "queryString":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1986
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 1987
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mHandler:Landroid/os/Handler;

    .line 1988
    const-wide/16 v2, 0x1f4

    .line 1987
    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1980
    :goto_0
    return-void

    .line 1990
    :cond_1
    invoke-direct {p0, v4, v3, v3, v3}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZ)V

    goto :goto_0
.end method

.method protected setDisplayOnlineContacts(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1510
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mDisplayOnlyOnlineContacts:Z

    .line 1511
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;

    .line 1512
    .local v0, "adapter":Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;
    if-eqz v0, :cond_0

    .line 1513
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->setDisplayOnlyOnlineContacts(Z)V

    .line 1509
    :cond_0
    return-void
.end method

.method protected setDisplayPhones(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1498
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mDisplayOnlyPhones:Z

    .line 1499
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;

    .line 1500
    .local v0, "adapter":Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;
    if-eqz v0, :cond_0

    .line 1501
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/list/ContactListItemAdapter;->setDisplayOnlyPhones(Z)V

    .line 1497
    :cond_0
    return-void
.end method

.method protected setEmptyText()V
    .locals 2

    .prologue
    .line 860
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mDisplayOnlyPhones:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mDisplayOnlyOnlineContacts:Z

    if-eqz v0, :cond_3

    .line 862
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mDisplayOnlyOnlineContacts:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mDisplayOnlyPhones:Z

    if-eqz v0, :cond_4

    .line 864
    :cond_1
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mMode:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_2

    .line 865
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mMode:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_5

    .line 866
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f09008e

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 874
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->isShowingSearchResult()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 875
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 859
    :goto_1
    return-void

    .line 861
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f09008d

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 863
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090208

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 867
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->isShowingSearchResult()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 868
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f09008c

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 870
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v0

    .line 871
    const v1, 0x7f090207

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 870
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 877
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->getEmptyView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1
.end method

.method public setFragmentQueryString(Ljava/lang/String;)V
    .locals 0
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 1518
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setQueryString(Ljava/lang/String;)V

    .line 1517
    return-void
.end method

.method public setListener(Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$OnContactsListActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$OnContactsListActionListener;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment$OnContactsListActionListener;

    .line 578
    return-void
.end method

.method public setMode(I)V
    .locals 1
    .param p1, "aMode"    # I

    .prologue
    const/16 v0, 0xa

    .line 805
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mMode:I

    .line 806
    sparse-switch p1, :sswitch_data_0

    .line 804
    :goto_0
    return-void

    .line 810
    :sswitch_0
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mMode:I

    goto :goto_0

    .line 814
    :sswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mDisplayOnlyPhones:Z

    .line 816
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mDisplayOnlyOnlineContacts:Z

    goto :goto_0

    .line 822
    :sswitch_2
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mMode:I

    goto :goto_0

    .line 826
    :sswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setGroupMode()V

    goto :goto_0

    .line 806
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x11 -> :sswitch_1
        0x14 -> :sswitch_3
        0x8c -> :sswitch_0
        0x96 -> :sswitch_2
        0xa0 -> :sswitch_2
        0xaa -> :sswitch_2
    .end sparse-switch
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mDelaySelection:Z

    .line 447
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->setQueryString(Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public setSelectedContactUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "selectedUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 1797
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZ)V

    .line 1796
    return-void
.end method

.method public setSelectionRequired(Z)V
    .locals 0
    .param p1, "required"    # Z

    .prologue
    .line 1793
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionRequired:Z

    .line 1792
    return-void
.end method

.method public setShouldDisplayContactNotFoundDialog(Z)V
    .locals 0
    .param p1, "shouldDisplay"    # Z

    .prologue
    .line 2053
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mShouldDisplayContactNotFoundDialog:Z

    .line 2052
    return-void
.end method

.method signalError()V
    .locals 0

    .prologue
    .line 1455
    return-void
.end method

.method protected startLoading()V
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mStartedLoading:Z

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->mSelectionVerified:Z

    .line 455
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/ContactEntryListFragment;->startLoading()V

    .line 451
    return-void
.end method
