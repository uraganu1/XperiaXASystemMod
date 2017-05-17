.class public final Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;
.super Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;
.source "JoinContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;,
        Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinQueryHandler;,
        Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$ContactItemCache;,
        Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;,
        Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;
    }
.end annotation


# static fields
.field private static final ALL_CONTACTS_QUERY_TOKEN:I = 0x53

.field public static final EXTRA_AGGREGATE_ID:Ljava/lang/String; = "com.android.contacts.action.AGGREGATE_ID"

.field public static final JOIN_AGGREGATE:Ljava/lang/String; = "com.android.contacts.action.JOIN_AGGREGATE"

.field private static final MAX_SUGGESTIONS:I = 0x4

.field private static final MODE_DEFAULT_BASE:I = 0x46

.field private static final MODE_JOIN_CONTACT:I = -0x32ffffba

.field public static final RETURN_RESULT:Ljava/lang/String; = "returnResult"

.field private static final SEARCH_BAR_VISIBILITY:Ljava/lang/String; = "search_bar_visibility"

.field private static final SUGGESTION_CONTACTS_QUERY_TOKEN:I = 0x54

.field private static final TAG:Ljava/lang/String;

.field private static final mMode:I = -0x32ffffba


# instance fields
.field mAlphabetIndexedList:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

.field private mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

.field private mEmptyView:Landroid/widget/TextView;

.field private mJoinModeShowAllContacts:Z

.field private mNeedResult:Z

.field private mQueryAggregateId:J


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mJoinModeShowAllContacts:Z

    return v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mJoinModeShowAllContacts:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "aFilter"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->doFilter(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getContactSelection()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-class v0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->TAG:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mEmptyView:Landroid/widget/TextView;

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mNeedResult:Z

    .line 72
    return-void
.end method

.method private appendGalSelection(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1132
    const-string/jumbo v0, " AND "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    const-string/jumbo v0, "_id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    const-string/jumbo v0, " NOT IN (SELECT "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    const-string/jumbo v0, "contact_id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    const-string/jumbo v0, " FROM raw_contacts WHERE "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    const-string/jumbo v0, "deleted"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    const-string/jumbo v0, " = 2)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    return-void
.end method

.method private doFilter(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "aFilter"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 403
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 407
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getJoinSuggestionsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 408
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getJoinSuggestionSelection()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 407
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->filterSimContacts(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v9

    .line 410
    .local v9, "suggestionCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 411
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getContactSelection()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .local v8, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " AND "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    const-string/jumbo v1, "_id"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const-string/jumbo v1, " IN("

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 416
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    const-string/jumbo v1, ","

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 421
    :cond_0
    const-string/jumbo v1, ")"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    const-string/jumbo v1, " AND "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    const-string/jumbo v1, "in_visible_group = 1 "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 426
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 427
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 426
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 430
    .end local v8    # "selection":Ljava/lang/StringBuilder;
    :cond_1
    iput-boolean v10, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mJoinModeShowAllContacts:Z

    .line 431
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 432
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getContactSelection()Ljava/lang/String;

    move-result-object v3

    .line 433
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 431
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->filterSimContacts(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v6

    .line 434
    .local v6, "contactCursor":Landroid/database/Cursor;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 435
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 436
    .local v7, "offset":I
    :goto_1
    if-lez v7, :cond_2

    .line 437
    add-int/lit8 v7, v7, 0x2

    .line 439
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mSorter:Lcom/sonyericsson/android/socialphonebook/cursor/CursorSorter;

    invoke-interface {v1, v6, v7}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorSorter;->getIndexedCursor(Landroid/database/Cursor;I)Lcom/sonyericsson/android/socialphonebook/cursor/IndexedCursor;

    move-result-object v6

    .line 445
    .end local v7    # "offset":I
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 446
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;

    invoke-direct {v1, v9, v6, v10, v4}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;ZLcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;)V

    return-object v1

    .line 435
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "offset":I
    goto :goto_1

    .line 441
    .end local v7    # "offset":I
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mSorter:Lcom/sonyericsson/android/socialphonebook/cursor/CursorSorter;

    invoke-interface {v1, v6}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorSorter;->getSortedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_2

    .line 449
    :cond_5
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;

    const/4 v2, 0x1

    invoke-direct {v1, v9, v6, v2, v4}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;ZLcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinSuggestionCursor;)V

    return-object v1
.end method

.method private filterSimContacts(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 1148
    const/4 v0, 0x0

    .line 1149
    .local v0, "filteredCursor":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;
    if-eqz p1, :cond_0

    .line 1150
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;

    .end local v0    # "filteredCursor":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;
    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;-><init>(Landroid/database/Cursor;I)V

    .line 1151
    .local v0, "filteredCursor":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;->filterCursor()V

    .line 1153
    .end local v0    # "filteredCursor":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$FilteredContactsCursorWrapper;
    :cond_0
    return-object v0
.end method

.method private getContactSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 555
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const-string/jumbo v1, "<>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    iget-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mQueryAggregateId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 558
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    const-string/jumbo v1, "in_visible_group = 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->appendGalSelection(Ljava/lang/StringBuilder;)V

    .line 563
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils;->excludeChameleonContactSelection(Ljava/lang/StringBuilder;)V

    .line 565
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getJoinSuggestionSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->appendGalSelection(Ljava/lang/StringBuilder;)V

    .line 542
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils;->excludeChameleonContactSelection(Ljava/lang/StringBuilder;)V

    .line 544
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    const-string/jumbo v1, "in_visible_group = 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getJoinSuggestionsUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p1, "aFilter"    # Ljava/lang/String;

    .prologue
    .line 574
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 575
    .local v0, "builder":Landroid/net/Uri$Builder;
    iget-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mQueryAggregateId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 576
    const-string/jumbo v1, "suggestions"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 578
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 579
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 581
    :cond_0
    const-string/jumbo v1, "limit"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 583
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private setEmptyText()V
    .locals 2

    .prologue
    .line 328
    const v0, 0x7f0e00a9

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mEmptyView:Landroid/widget/TextView;

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f09008b

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 327
    return-void
.end method


# virtual methods
.method public bridge synthetic isSafeToCommitTransactions()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->isSafeToCommitTransactions()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "aIcicle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v12, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 151
    sget-object v6, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->TAG:Ljava/lang/String;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 152
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;

    .line 154
    iget-boolean v7, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mSortedByPhonetic:Z

    .line 153
    const/16 v8, 0x9

    invoke-direct {v6, p0, v8, v7, v9}, Lcom/sonyericsson/android/socialphonebook/cursor/ContactsCursorSorter;-><init>(Landroid/content/Context;IZI)V

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mSorter:Lcom/sonyericsson/android/socialphonebook/cursor/CursorSorter;

    .line 155
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 156
    const/16 v7, 0x32

    .line 155
    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 160
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 161
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "com.android.contacts.action.AGGREGATE_ID"

    invoke-virtual {v2, v6, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mQueryAggregateId:J

    .line 162
    iget-wide v6, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mQueryAggregateId:J

    cmp-long v6, v6, v12

    if-nez v6, :cond_0

    .line 163
    sget-object v6, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Intent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 164
    const-string/jumbo v8, " is missing required extra: "

    .line 163
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 164
    const-string/jumbo v8, "com.android.contacts.action.AGGREGATE_ID"

    .line 163
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, v10}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->setResult(I)V

    .line 166
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->finish()V

    .line 167
    return-void

    .line 170
    :cond_0
    const-string/jumbo v6, "returnResult"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mNeedResult:Z

    .line 172
    const v6, 0x7f04004e

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->setContentView(I)V

    .line 174
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    .line 176
    .local v3, "isUsingTwoPanes":Z
    if-nez v3, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 178
    .local v1, "bar":Landroid/app/ActionBar;
    const/4 v6, 0x4

    const/4 v7, 0x5

    invoke-virtual {v1, v6, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 183
    .end local v1    # "bar":Landroid/app/ActionBar;
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->setEmptyText()V

    .line 185
    iput-boolean v9, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mJoinModeShowAllContacts:Z

    .line 188
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 189
    .local v4, "list":Landroid/widget/ListView;
    invoke-virtual {v4, v9}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 191
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;-><init>(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;Landroid/content/Context;)V

    .line 192
    .local v0, "adapter":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 195
    invoke-virtual {v4, v10}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 197
    const v6, 0x7f0e00ae

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mAlphabetIndexedList:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    .line 198
    invoke-virtual {p0, v9}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->setGoneAlphabetBar(Z)V

    .line 201
    const v6, 0x7f0e00b2

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SearchView;

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mSearchBox:Landroid/widget/SearchView;

    .line 202
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v6, v10}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 206
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 210
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->clearFocus()V

    .line 212
    const v6, 0x7f0e00b1

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 213
    .local v5, "searchPanel":Landroid/view/View;
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mSearchBox:Landroid/widget/SearchView;

    new-instance v7, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$1;

    invoke-direct {v7, p0, v0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$1;-><init>(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 232
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->prepareAlphabetListTouchListener()V

    .line 234
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinQueryHandler;

    invoke-direct {v6, p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinQueryHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;)V

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

    .line 235
    iput-boolean v9, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mJustCreated:Z

    .line 237
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-direct {v6, p0}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    .line 238
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    new-instance v7, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$2;

    invoke-direct {v7, p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$2;-><init>(Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;)V

    invoke-virtual {v6, v7, v10}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->refresh(Ljava/lang/Runnable;Z)V

    .line 245
    sget-object v6, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->TAG:Ljava/lang/String;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->stopObservering()V

    .line 298
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;->destroy()V

    .line 299
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mContactsStatusMgr:Lcom/sonyericsson/android/socialphonebook/model/ContactsStatusMgr;

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;

    .line 303
    .local v0, "adapter":Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;
    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity$JoinItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 306
    :cond_1
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->onDestroy()V

    .line 308
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "aKeyCode"    # I
    .param p2, "aEvent"    # Landroid/view/KeyEvent;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "aKeyCode"    # I
    .param p2, "aEvent"    # Landroid/view/KeyEvent;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .param p1, "aList"    # Landroid/widget/ListView;
    .param p2, "aView"    # Landroid/view/View;
    .param p3, "aPosition"    # I
    .param p4, "aId"    # J

    .prologue
    .line 346
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 349
    const-string/jumbo v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 348
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 350
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 352
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-ltz v3, :cond_2

    .line 355
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 357
    .local v1, "intent":Landroid/content/Intent;
    iget-wide v4, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mQueryAggregateId:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 358
    const-string/jumbo v3, "com.android.contacts.action.AGGREGATE_ID"

    iget-wide v4, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mQueryAggregateId:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 361
    :cond_0
    invoke-virtual {p0, p3}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getContactUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 362
    .local v2, "uri":Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 363
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Contact Uri was not resolved, click event ignored!"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void

    .line 366
    :cond_1
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mNeedResult:Z

    if-eqz v3, :cond_3

    .line 367
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->setResult(ILandroid/content/Intent;)V

    .line 369
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->finish()V

    .line 377
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 345
    return-void

    .line 372
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_3
    iget-wide v4, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mQueryAggregateId:J

    .line 371
    invoke-static {p0, v4, v5, p4, p5}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;->joinAggregateInBackground(Landroid/app/Activity;JJ)V

    .line 373
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 267
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 274
    :goto_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 269
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->finish()V

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "aIcicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 285
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 286
    const-string/jumbo v1, "search_bar_visibility"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->setSearchBoxVisibility(Z)V

    .line 284
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->onResume()V

    .line 262
    invoke-static {p0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->resume()V

    .line 260
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 251
    const v1, 0x7f0e00b1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 252
    .local v0, "searchPanel":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 253
    const-string/jumbo v1, "search_bar_visibility"

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 249
    return-void
.end method

.method public bridge synthetic onTouchList(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "aView"    # Landroid/view/View;
    .param p2, "anEvent"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->onTouchList(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setGoneAlphabetBar(Z)V
    .locals 1
    .param p1, "gone"    # Z

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mAlphabetIndexedList:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mAlphabetIndexedList:Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/widget/IndexedListView;->setGoneIndexedBar(Z)V

    .line 457
    :cond_0
    return-void
.end method

.method protected setSearchBoxVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 312
    const v1, 0x7f0e00b1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 313
    .local v0, "searchPanel":Landroid/view/View;
    if-nez v0, :cond_0

    .line 314
    return-void

    .line 316
    :cond_0
    if-eqz p1, :cond_1

    .line 317
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 311
    :goto_0
    return-void

    .line 320
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected startQuery()V
    .locals 8

    .prologue
    const/16 v1, 0x2a

    const/4 v2, 0x0

    .line 385
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 386
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

    const/16 v4, 0x53

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 388
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getJoinSuggestionsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 390
    .local v3, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

    .line 391
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 392
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;->getJoinSuggestionSelection()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    move-object v7, v2

    .line 390
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void
.end method
