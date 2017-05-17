.class public Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;
.super Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;
.source "SearchResultCursor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchResultCursor"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursorsSize:[I

.field mMatchResult:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchInfo:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;


# direct methods
.method public constructor <init>([Landroid/database/Cursor;Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;Landroid/util/SparseArray;)V
    .locals 4
    .param p1, "cursors"    # [Landroid/database/Cursor;
    .param p2, "key"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/database/Cursor;",
            "Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, "nameMatchResult":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;>;"
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 36
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mSearchInfo:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;

    .line 38
    array-length v1, p1

    .line 39
    .local v1, "len":I
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mCursorsSize:[I

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 41
    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mCursorsSize:[I

    aget-object v3, p1, v0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    aput v3, v2, v0

    .line 40
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mCursorsSize:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->moveToFirst()Z

    .line 49
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mMatchResult:Landroid/util/SparseArray;

    .line 33
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->close()V

    .line 56
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mSearchInfo:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;

    .line 57
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mMatchResult:Landroid/util/SparseArray;

    .line 58
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mCursorsSize:[I

    .line 53
    return-void
.end method

.method public getHighlightStyle(I)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "column"    # I

    .prologue
    .line 96
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->getInstance()Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;

    move-result-object v2

    .line 97
    .local v2, "factory":Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;
    const/4 v5, 0x0

    .line 98
    .local v5, "result":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "defaultStr":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 138
    .end local v5    # "result":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v5, :cond_1

    .line 139
    move-object v5, v1

    .line 141
    :cond_1
    return-object v5

    .line 102
    .restart local v5    # "result":Ljava/lang/CharSequence;
    :pswitch_1
    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->getInt(I)I

    move-result v0

    .line 103
    .local v0, "contactId":I
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mMatchResult:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    invoke-static {v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->getCharsMatchedIdx(Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;)[F

    move-result-object v4

    .line 104
    .local v4, "machedIdx":[F
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/android/contacts/detail/ContactDisplayUtils;->getProperlyFormatedNameText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "formatedStr":Ljava/lang/String;
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->constructHighlightStyle(Ljava/lang/String;[F)Ljava/lang/CharSequence;

    move-result-object v5

    .local v5, "result":Ljava/lang/CharSequence;
    goto :goto_0

    .line 109
    .end local v0    # "contactId":I
    .end local v3    # "formatedStr":Ljava/lang/String;
    .end local v4    # "machedIdx":[F
    .local v5, "result":Ljava/lang/CharSequence;
    :pswitch_2
    const/4 v6, 0x3

    if-ne p1, v6, :cond_0

    .line 110
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mSearchInfo:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->hasCountryCode()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 112
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mSearchInfo:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 111
    if-eqz v6, :cond_2

    .line 114
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mSearchInfo:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 113
    invoke-virtual {v2, v1, v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->constructHighlightStyle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .local v5, "result":Ljava/lang/CharSequence;
    goto :goto_0

    .line 116
    .local v5, "result":Ljava/lang/CharSequence;
    :cond_2
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mSearchInfo:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->constructHighlightStyle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .local v5, "result":Ljava/lang/CharSequence;
    goto :goto_0

    .line 123
    .local v5, "result":Ljava/lang/CharSequence;
    :pswitch_3
    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    .line 124
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mSearchInfo:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->hasCountryCode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 126
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mSearchInfo:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 125
    if-eqz v6, :cond_3

    .line 128
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mSearchInfo:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-virtual {v2, v1, v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->constructHighlightStyle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .local v5, "result":Ljava/lang/CharSequence;
    goto :goto_0

    .line 130
    .local v5, "result":Ljava/lang/CharSequence;
    :cond_3
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mSearchInfo:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/HighlightStyleFactory;->constructHighlightStyle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .local v5, "result":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getInt(I)I
    .locals 4
    .param p1, "column"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    const/16 v0, 0xd

    if-ne p1, v0, :cond_4

    .line 64
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mPos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mPos:I

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 65
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 66
    :cond_1
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mPos:I

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mCursorsSize:[I

    aget v1, v1, v2

    if-ge v0, v1, :cond_2

    .line 67
    return v2

    .line 68
    :cond_2
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mPos:I

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mCursorsSize:[I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mCursorsSize:[I

    aget v2, v2, v3

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    .line 69
    return v3

    .line 71
    :cond_3
    const/4 v0, 0x2

    return v0

    .line 74
    :cond_4
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchMergeCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public isNameMatchedItem()Z
    .locals 2

    .prologue
    .line 82
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->getInt(I)I

    move-result v0

    .line 83
    .local v0, "contactId":I
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mMatchResult:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method
