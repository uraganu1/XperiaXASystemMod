.class abstract Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;
.source "AbstractContactsListActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView$OnIndexedListTouchListener;
.implements Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$DeleteClickListener;,
        Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;,
        Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$AbstractContactsListDialogListener;
    }
.end annotation


# static fields
.field public static final CHAR_ARRAY_BUFFER_SIEZ:I = 0x80

.field static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

.field private static final FILTER_TEXT_KEY:Ljava/lang/String; = "filter"

.field private static final FOCUS_KEY:Ljava/lang/String; = "focused"

.field private static final LIST_STATE_KEY:Ljava/lang/String; = "liststate"

.field static final MODE_MASK_CREATE_NEW:I = 0x10000000

.field static final MODE_MASK_DISABLE_QUIKCCONTACT:I = 0x1000000

.field static final MODE_MASK_MULTI_CHOICE:I = 0x400000

.field static final MODE_MASK_NO_DATA:I = 0x4000000

.field static final MODE_MASK_NO_FILTER:I = 0x20000000

.field static final MODE_MASK_NO_PRESENCE:I = 0x40000000

.field static final MODE_MASK_PICKER:I = -0x80000000

.field static final MODE_MASK_SHOW_CALL_BUTTON:I = 0x2000000

.field static final MODE_MASK_SHOW_NUMBER_OF_CONTACTS:I = 0x800000

.field static final MODE_MASK_SHOW_PHOTOS:I = 0x8000000

.field static final NAME_COLUMN:Ljava/lang/String; = "display_name"

.field static final QUERY_TOKEN:I = 0x2a

.field static final RAW_CONTACTS_ACCOUNT_TYPE_COLUMN_INDEX:I = 0x2

.field static final RAW_CONTACTS_CONTACT_ID_COLUMN_INDEX:I = 0x1

.field static final RAW_CONTACTS_DATA_SET_COLUMN_INDEX:I = 0x3

.field static final RAW_CONTACTS_ID_COLUMN_INDEX:I = 0x0

.field private static final RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final SELECTED_CONTACT_URI_KEY:Ljava/lang/String; = "selectedContactUri"

.field static final SUMMARY_HAS_PHONE_COLUMN_INDEX:I = 0x7

.field static final SUMMARY_ID_COLUMN_INDEX:I = 0x0

.field static final SUMMARY_LOOKUP_KEY:I = 0x6

.field static final SUMMARY_NAME_ALTERNATIVE_COLUMN_INDEX:I = 0x8

.field static final SUMMARY_NAME_COLUMN_INDEX:I = 0x1

.field static final SUMMARY_PHOTO_ID_COLUMN_INDEX:I = 0x5

.field static final SUMMARY_PRESENCE_STATUS_COLUMN_INDEX:I = 0x4

.field static final SUMMARY_SORT_KEY_ALTERNATIVE_COLUMN_INDEX:I = 0xa

.field static final SUMMARY_SORT_KEY_PRIMARY_COLUMN_INDEX:I = 0x9

.field static final SUMMARY_STARRED_COLUMN_INDEX:I = 0x2

.field static final SUMMARY_TIMES_CONTACTED_COLUMN_INDEX:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAlphabetList:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

.field private mCheckedPositions:Landroid/util/SparseBooleanArray;

.field public mDisplayOrder:Z

.field private mFilterDataSetObserver:Landroid/database/DataSetObserver;

.field private mIsSafeToCommitTransactions:Z

.field protected mJustCreated:Z

.field private mListHasFocus:Z

.field private mListState:Landroid/os/Parcelable;

.field private mManagedDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field protected mQueryHandler:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

.field protected mSearchBox:Landroid/widget/SearchView;

.field protected mSelectedContactUri:Landroid/net/Uri;

.field protected mSortedByPhonetic:Z

.field protected mSorter:Lcom/sonyericsson/android/socialphonebook/cursor/CursorSorter;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 119
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 120
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v4

    .line 121
    const-string/jumbo v1, "starred"

    aput-object v1, v0, v5

    .line 122
    const-string/jumbo v1, "times_contacted"

    aput-object v1, v0, v6

    .line 123
    const-string/jumbo v1, "contact_presence"

    aput-object v1, v0, v7

    .line 124
    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 125
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 126
    const-string/jumbo v1, "has_phone_number"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 127
    const-string/jumbo v1, "display_name_alt"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 128
    const-string/jumbo v1, "sort_key"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 129
    const-string/jumbo v1, "sort_key_alt"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 118
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 155
    new-array v0, v7, [Ljava/lang/String;

    .line 156
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 157
    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v4

    .line 158
    const-string/jumbo v1, "account_type"

    aput-object v1, v0, v5

    .line 159
    const-string/jumbo v1, "data_set"

    aput-object v1, v0, v6

    .line 155
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 180
    const-class v0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    .line 81
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;-><init>()V

    .line 189
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSorter:Lcom/sonyericsson/android/socialphonebook/cursor/CursorSorter;

    .line 208
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mListState:Landroid/os/Parcelable;

    .line 219
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CollectionsWrapper$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mManagedDialogs:Ljava/util/List;

    .line 81
    return-void
.end method

.method private callOrSmsContact(Landroid/database/Cursor;ZZ)Z
    .locals 11
    .param p1, "aCursor"    # Landroid/database/Cursor;
    .param p2, "aSendSms"    # Z
    .param p3, "aEdit"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 748
    if-eqz p1, :cond_b

    .line 750
    const/4 v6, 0x7

    .line 749
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    .line 751
    .local v0, "hasPhone":Z
    :goto_0
    if-nez v0, :cond_1

    .line 753
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->signalError()V

    .line 754
    return v8

    .line 749
    .end local v0    # "hasPhone":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "hasPhone":Z
    goto :goto_0

    .line 757
    :cond_1
    const/4 v3, 0x0

    .line 758
    .local v3, "phone":Ljava/lang/String;
    const/4 v5, 0x0

    .line 760
    .local v5, "phonesCursor":Landroid/database/Cursor;
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 759
    invoke-virtual {p0, v6, v7}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->queryPhoneNumbers(J)Landroid/database/Cursor;

    move-result-object v5

    .line 761
    .local v5, "phonesCursor":Landroid/database/Cursor;
    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_4

    .line 762
    :cond_2
    if-eqz v5, :cond_3

    .line 763
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 766
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->signalError()V

    .line 767
    return v8

    .line 768
    :cond_4
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ne v6, v10, :cond_6

    .line 771
    const-string/jumbo v6, "data1"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 770
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 785
    .end local v3    # "phone":Ljava/lang/String;
    :cond_5
    :goto_1
    if-nez v3, :cond_8

    .line 787
    new-instance v4, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;

    invoke-direct {v4, p0, v5, p2, p3}, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZZ)V

    .line 789
    .local v4, "phoneDialog":Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;
    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;->show()V

    .line 802
    .end local v4    # "phoneDialog":Lcom/sonyericsson/android/socialphonebook/PhoneDisambigDialog;
    :goto_2
    return v10

    .line 773
    .restart local v3    # "phone":Ljava/lang/String;
    :cond_6
    const/4 v6, -0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 774
    :cond_7
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 776
    const-string/jumbo v6, "is_super_primary"

    .line 775
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_7

    .line 779
    const-string/jumbo v6, "data1"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 778
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "phone":Ljava/lang/String;
    goto :goto_1

    .line 791
    .end local v3    # "phone":Ljava/lang/String;
    :cond_8
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 792
    if-eqz p2, :cond_9

    .line 793
    invoke-static {p0, v3}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->initiateSms(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 794
    :cond_9
    if-eqz p3, :cond_a

    .line 795
    const-string/jumbo v6, "tel"

    invoke-static {v6, v3, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 796
    .local v2, "numberUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.DIAL"

    invoke-direct {v1, v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 797
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 799
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "numberUri":Landroid/net/Uri;
    :cond_a
    invoke-static {p0, v3, v10}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->initiateCall(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 805
    .end local v0    # "hasPhone":Z
    .end local v5    # "phonesCursor":Landroid/database/Cursor;
    :cond_b
    return v8
.end method

.method private containsContactListAdapter()Z
    .locals 1

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

    return v0
.end method

.method private focusSearchbox()V
    .locals 3

    .prologue
    .line 669
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 671
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->isFocusable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_1

    .line 676
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->requestFocus()Z

    .line 679
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 681
    const-string/jumbo v1, "input_method"

    .line 680
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 682
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 668
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    return-void
.end method


# virtual methods
.method protected deleteContact()V
    .locals 5

    .prologue
    .line 241
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 243
    :try_start_0
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;-><init>(Landroid/content/Context;)V

    .line 245
    .local v0, "delHelper":Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->delete(Landroid/net/Uri;)V

    .line 247
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 248
    const v3, 0x7f0f0003

    const/4 v4, 0x1

    .line 247
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 249
    const/4 v3, 0x0

    .line 246
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v0    # "delHelper":Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;
    :goto_0
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 240
    return-void

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Landroid/database/SQLException;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "aFilter"    # Ljava/lang/String;

    .prologue
    .line 696
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 698
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 697
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 700
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected getContactUri(I)Landroid/net/Uri;
    .locals 8
    .param p1, "aPosition"    # I

    .prologue
    const/4 v7, 0x0

    .line 713
    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    .line 714
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Position not in list bounds"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 717
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 718
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 722
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Unable to get contact Uri due to unpositioned cursor!"

    invoke-static {v5, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    return-object v7

    .line 727
    :cond_1
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 728
    .local v0, "contactId":J
    const/4 v5, 0x6

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 729
    .local v4, "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 730
    .end local v0    # "contactId":J
    .end local v4    # "lookupKey":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 734
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Unable to get contact Uri due to IllegalArgumentException!"

    invoke-static {v5, v6, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 736
    return-object v7
.end method

.method protected getSortOrder([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "projectionType"    # [Ljava/lang/String;

    .prologue
    .line 910
    const-string/jumbo v0, "display_name COLLATE LOCALIZED ASC"

    return-object v0
.end method

.method public isSafeToCommitTransactions()Z
    .locals 1

    .prologue
    .line 1075
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mIsSafeToCommitTransactions:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x1

    .line 654
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 656
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 657
    .local v0, "hkh":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 658
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    if-ne v0, v2, :cond_0

    .line 660
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 661
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->focusSearchbox()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "aIcicle"    # Landroid/os/Bundle;

    .prologue
    .line 321
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 322
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 324
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    return-void

    .line 327
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mIsSafeToCommitTransactions:Z

    .line 329
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 330
    const v1, 0x7f0b0003

    .line 329
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSortedByPhonetic:Z

    .line 332
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 333
    const/16 v1, 0x20

    .line 332
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 335
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$1;-><init>(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mFilterDataSetObserver:Landroid/database/DataSetObserver;

    .line 379
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "aId"    # I

    .prologue
    const v2, 0x7f090071

    const/high16 v5, 0x1040000

    const v4, 0x104000a

    const/4 v3, 0x0

    .line 851
    const/4 v0, 0x0

    .line 852
    .local v0, "dialog":Landroid/app/AlertDialog;
    sparse-switch p1, :sswitch_data_0

    .line 894
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :goto_0
    return-object v0

    .line 854
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    :sswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 855
    const v2, 0x7f0900ad

    .line 854
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 856
    const v2, 0x7f0900ae

    .line 854
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/AlertDialog;
    goto :goto_0

    .line 860
    .local v0, "dialog":Landroid/app/AlertDialog;
    :sswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 862
    const v2, 0x7f090075

    .line 860
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 865
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$DeleteClickListener;

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$DeleteClickListener;-><init>(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$DeleteClickListener;)V

    .line 860
    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/AlertDialog;
    goto :goto_0

    .line 868
    .local v0, "dialog":Landroid/app/AlertDialog;
    :sswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 870
    const v2, 0x7f090072

    .line 868
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 873
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$DeleteClickListener;

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$DeleteClickListener;-><init>(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$DeleteClickListener;)V

    .line 868
    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/AlertDialog;
    goto :goto_0

    .line 876
    .local v0, "dialog":Landroid/app/AlertDialog;
    :sswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 878
    const v2, 0x7f090073

    .line 876
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 881
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$DeleteClickListener;

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$DeleteClickListener;-><init>(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$DeleteClickListener;)V

    .line 876
    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/AlertDialog;
    goto/16 :goto_0

    .line 884
    .local v0, "dialog":Landroid/app/AlertDialog;
    :sswitch_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 886
    const v2, 0x7f090074

    .line 884
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 889
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$DeleteClickListener;

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$DeleteClickListener;-><init>(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$DeleteClickListener;)V

    .line 884
    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/AlertDialog;
    goto/16 :goto_0

    .line 852
    :sswitch_data_0
    .sparse-switch
        0x7f0e000e -> :sswitch_0
        0x7f0e0018 -> :sswitch_1
        0x7f0e0019 -> :sswitch_2
        0x7f0e001a -> :sswitch_4
        0x7f0e001b -> :sswitch_3
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    const/16 v6, 0x2a

    const/4 v5, 0x0

    .line 619
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onDestroy()V

    .line 621
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mManagedDialogs:Ljava/util/List;

    monitor-enter v4

    .line 627
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mManagedDialogs:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "dialog$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    .line 628
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 629
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 621
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v2    # "dialog$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "dialog$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 634
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

    if-eqz v3, :cond_2

    .line 635
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

    invoke-virtual {v3, v6}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 636
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

    invoke-virtual {v3, v6}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;->removeMessages(I)V

    .line 637
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 640
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->containsContactListAdapter()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 641
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

    .line 642
    .local v0, "adapter":Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;
    if-eqz v0, :cond_3

    .line 643
    invoke-virtual {v0, v5}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 647
    .end local v0    # "adapter":Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;
    :cond_3
    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSorter:Lcom/sonyericsson/android/socialphonebook/cursor/CursorSorter;

    .line 648
    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mAlphabetList:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    .line 649
    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mFilterDataSetObserver:Landroid/database/DataSetObserver;

    .line 618
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "aKeyCode"    # I
    .param p2, "aEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 273
    sparse-switch p1, :sswitch_data_0

    .line 282
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->focusSearchbox()V

    .line 285
    :sswitch_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 273
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "aKeyCode"    # I
    .param p2, "aEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 299
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p2, v0, v1, v1}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 304
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 305
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 582
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onPause()V

    .line 583
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->containsContactListAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->setShouldQueryCursorChanges(Z)V

    .line 585
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mFilterDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 581
    :cond_0
    return-void
.end method

.method protected final onRestart()V
    .locals 2

    .prologue
    .line 485
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 486
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onRestart()V

    .line 495
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mJustCreated:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->containsContactListAdapter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 496
    if-eqz v0, :cond_2

    .line 498
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->startQuery()V

    .line 508
    :cond_1
    :goto_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 484
    return-void

    .line 502
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->setShouldQueryCursorChanges(Z)V

    .line 504
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->onContentChanged()V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "aIcicle"    # Landroid/os/Bundle;

    .prologue
    .line 566
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 568
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 571
    const-string/jumbo v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mListState:Landroid/os/Parcelable;

    .line 572
    const-string/jumbo v0, "focused"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mListHasFocus:Z

    .line 573
    const-string/jumbo v0, "selectedContactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSelectedContactUri:Landroid/net/Uri;

    .line 574
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    const-string/jumbo v1, "filter"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 577
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    .line 387
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 388
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onResume()V

    .line 389
    iput-boolean v8, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mIsSafeToCommitTransactions:Z

    .line 391
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->containsContactListAdapter()Z

    move-result v7

    if-nez v7, :cond_0

    .line 392
    return-void

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mFilterDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v7, v10}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 397
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

    .line 398
    .local v0, "adapter":Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;
    invoke-virtual {v0, v8}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->setShouldQueryCursorChanges(Z)V

    .line 399
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->isUpdateMissed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 400
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->onContentChanged()V

    .line 403
    :cond_1
    const/4 v6, 0x1

    .line 404
    .local v6, "runQuery":Z
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getParent()Landroid/app/Activity;

    move-result-object v5

    .line 407
    .local v5, "parent":Landroid/app/Activity;
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    if-eqz v7, :cond_4

    .line 408
    const/4 v3, 0x0

    .line 409
    .local v3, "filterText":Ljava/lang/String;
    if-eqz v5, :cond_2

    instance-of v7, v5, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    if-eqz v7, :cond_2

    move-object v7, v5

    .line 411
    check-cast v7, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-virtual {v7}, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;->getAndClearFilterText()Ljava/lang/String;

    move-result-object v3

    .line 412
    .local v3, "filterText":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 413
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v7, v3, v8}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 416
    .end local v3    # "filterText":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Landroid/widget/CursorAdapter;

    invoke-virtual {v7}, Landroid/widget/CursorAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    .line 417
    .local v2, "filter":Landroid/widget/Filter;
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v7}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 418
    .restart local v3    # "filterText":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 419
    invoke-virtual {v2, v3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 422
    const/4 v6, 0x0

    .line 427
    :cond_3
    const/4 v4, 0x0

    .line 428
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->isChild()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 429
    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 433
    .local v4, "intent":Landroid/content/Intent;
    :goto_0
    const-string/jumbo v7, "from-new-intent"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 434
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v7, v11, v8}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 437
    const-string/jumbo v7, "from-new-intent"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 441
    .end local v2    # "filter":Landroid/widget/Filter;
    .end local v3    # "filterText":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    iget-boolean v7, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mJustCreated:Z

    if-eqz v7, :cond_5

    if-eqz v6, :cond_5

    .line 445
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->startQuery()V

    .line 448
    :cond_5
    iget-boolean v7, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mJustCreated:Z

    if-eqz v7, :cond_6

    .line 449
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;

    move-result-object v1

    .line 450
    .local v1, "contactsPrefs":Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;->getDisplayOrder()I

    move-result v7

    if-ne v7, v8, :cond_8

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mDisplayOrder:Z

    .line 457
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->focusSearchbox()V

    .line 460
    .end local v1    # "contactsPrefs":Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;
    :cond_6
    iput-boolean v9, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mJustCreated:Z

    .line 461
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 386
    return-void

    .line 431
    .restart local v2    # "filter":Landroid/widget/Filter;
    .restart local v3    # "filterText":Ljava/lang/String;
    .local v4, "intent":Landroid/content/Intent;
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .local v4, "intent":Landroid/content/Intent;
    goto :goto_0

    .end local v2    # "filter":Landroid/widget/Filter;
    .end local v3    # "filterText":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v1    # "contactsPrefs":Lcom/sonyericsson/android/socialphonebook/ui/ContactsPreferences;
    :cond_8
    move v7, v9

    .line 450
    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "aIcicle"    # Landroid/os/Bundle;

    .prologue
    .line 528
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 529
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mIsSafeToCommitTransactions:Z

    .line 534
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mListState:Landroid/os/Parcelable;

    .line 535
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->hasFocus()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mListHasFocus:Z

    .line 536
    const-string/jumbo v3, "liststate"

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 537
    const-string/jumbo v3, "focused"

    iget-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mListHasFocus:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 538
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSelectedContactUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 539
    const-string/jumbo v3, "selectedContactUri"

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 541
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    if-eqz v3, :cond_1

    .line 542
    const-string/jumbo v3, "filter"

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 546
    .local v0, "array":Landroid/util/SparseBooleanArray;
    if-eqz v0, :cond_2

    .line 547
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mCheckedPositions:Landroid/util/SparseBooleanArray;

    .line 548
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 549
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 550
    .local v2, "key":I
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mCheckedPositions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 548
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 554
    .end local v1    # "i":I
    .end local v2    # "key":I
    :cond_2
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 555
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 466
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onStart()V

    .line 467
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mIsSafeToCommitTransactions:Z

    .line 470
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->refreshContactPhotos()V

    .line 474
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->containsContactListAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->setShouldQueryCursorChanges(Z)V

    .line 465
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 594
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 595
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onStop()V

    .line 597
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

    if-eqz v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;->cancelLastQuery()V

    .line 601
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->containsContactListAdapter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 606
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;

    .line 607
    .local v0, "adapter":Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->clearContactPhotos()V

    .line 611
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;->setShouldQueryCursorChanges(Z)V

    .line 614
    .end local v0    # "adapter":Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method public onTouchList(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "aView"    # Landroid/view/View;
    .param p2, "anEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 1043
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1044
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1045
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1046
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1049
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v2
.end method

.method protected prepareAlphabetListTouchListener()V
    .locals 1

    .prologue
    .line 1058
    const v0, 0x7f0e00ae

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mAlphabetList:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    .line 1059
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mAlphabetList:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mAlphabetList:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->setOnIndexedListTouchListener(Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView$OnIndexedListTouchListener;)V

    .line 1057
    :cond_0
    return-void
.end method

.method protected final queryPhoneNumbers(J)Landroid/database/Cursor;
    .locals 11
    .param p1, "aContactId"    # J

    .prologue
    .line 815
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 818
    .local v6, "baseUri":Landroid/net/Uri;
    const-string/jumbo v0, "data"

    .line 817
    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 820
    .local v1, "dataUri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 822
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 823
    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "data1"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "is_super_primary"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 824
    const-string/jumbo v3, "mimetype=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 825
    const-string/jumbo v5, "vnd.android.cursor.item/phone_v2"

    const/4 v9, 0x0

    aput-object v5, v4, v9

    .line 826
    const/4 v5, 0x0

    .line 822
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 828
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    return-object v7

    .line 830
    :cond_0
    if-eqz v7, :cond_1

    .line 831
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    const/4 v7, 0x0

    .line 841
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v7

    .line 834
    :catch_0
    move-exception v8

    .line 835
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_1

    .line 836
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 837
    const/4 v7, 0x0

    .local v7, "c":Landroid/database/Cursor;
    goto :goto_0
.end method

.method protected final restoreListState(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;)V
    .locals 7
    .param p1, "aActivity"    # Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;

    .prologue
    const/4 v6, 0x0

    .line 1013
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 1014
    iget-object v4, p1, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mListState:Landroid/os/Parcelable;

    if-eqz v4, :cond_1

    .line 1015
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "aActivity.mListState != null"

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p1, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1017
    iget-boolean v4, p1, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mListHasFocus:Z

    if-eqz v4, :cond_0

    .line 1018
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->requestFocus()Z

    .line 1020
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p1, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mListHasFocus:Z

    .line 1021
    iput-object v6, p1, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mListState:Landroid/os/Parcelable;

    .line 1023
    :cond_1
    iget-object v4, p1, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mCheckedPositions:Landroid/util/SparseBooleanArray;

    if-eqz v4, :cond_3

    .line 1024
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mCheckedPositions:Landroid/util/SparseBooleanArray;

    .line 1025
    .local v0, "array":Landroid/util/SparseBooleanArray;
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 1027
    .local v3, "list":Landroid/widget/ListView;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1028
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 1029
    .local v2, "key":I
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1027
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1032
    .end local v2    # "key":I
    :cond_2
    iput-object v6, p1, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mCheckedPositions:Landroid/util/SparseBooleanArray;

    .line 1034
    .end local v0    # "array":Landroid/util/SparseBooleanArray;
    .end local v1    # "i":I
    .end local v3    # "list":Landroid/widget/ListView;
    :cond_3
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 1012
    return-void
.end method

.method signalError()V
    .locals 0

    .prologue
    .line 900
    return-void
.end method

.method protected abstract startQuery()V
.end method
