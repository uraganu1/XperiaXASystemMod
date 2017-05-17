.class public Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;
.super Ljava/lang/Object;
.source "ContactSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SearchHandler;,
        Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;,
        Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;
    }
.end annotation


# static fields
.field private static final MIMETYPE_ID:Ljava/lang/String; = "mimetype_id"

.field private static final MIMETYPE_ID_VALUE:I = 0x5

.field private static final SEARCH_DELAY_MILLIS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ContactSearch"

.field private static final TOKEN_SEARCH_CONTACTS:I = 0x1


# instance fields
.field private mMatchResult:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mSearchHandler:Landroid/os/Handler;

.field private mSmartMatch:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;

.field private mSmartSearchCursor:Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;

.field private mTinyContactsCursor:Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mResolver:Landroid/content/ContentResolver;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mMatchResult:Landroid/util/SparseArray;

    .line 86
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mSmartMatch:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;

    .line 79
    return-void
.end method

.method private destroyHandler()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 467
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mSearchHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mSearchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 469
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mSearchHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 470
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mSearchHandler:Landroid/os/Handler;

    .line 466
    :cond_0
    return-void
.end method

.method private getMatchedIndices(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;)[I
    .locals 17
    .param p1, "key"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;

    .prologue
    .line 218
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mMatchResult:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V

    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->getKey()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mSmartSearchCursor:Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mMatchResult:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->getNameMatchedContactIds(Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;Landroid/util/SparseArray;)[I

    move-result-object v5

    .line 221
    .local v5, "matchedContactIds":[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mTinyContactsCursor:Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->getNameMatchedContactTableIndices([ILcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;)[I

    move-result-object v7

    .line 223
    .local v7, "nameIndices":[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mTinyContactsCursor:Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->getNumberMatchedContactTableIndices(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;)[I

    move-result-object v9

    .line 225
    .local v9, "numberIndices":[I
    if-nez v7, :cond_0

    const/4 v6, 0x0

    .line 226
    .local v6, "nameCount":I
    :goto_0
    if-nez v9, :cond_1

    const/4 v8, 0x0

    .line 228
    .local v8, "numberCount":I
    :goto_1
    add-int v14, v6, v8

    if-gtz v14, :cond_2

    .line 229
    const/4 v14, 0x0

    return-object v14

    .line 225
    .end local v6    # "nameCount":I
    .end local v8    # "numberCount":I
    :cond_0
    array-length v6, v7

    .restart local v6    # "nameCount":I
    goto :goto_0

    .line 226
    :cond_1
    array-length v8, v9

    .restart local v8    # "numberCount":I
    goto :goto_1

    .line 234
    :cond_2
    add-int v14, v6, v8

    new-array v13, v14, [I

    .line 235
    .local v13, "totalIndices":[I
    const/4 v2, 0x0

    .line 236
    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    move v4, v3

    .line 237
    .end local v3    # "j":I
    .local v4, "j":I
    :goto_2
    if-ge v2, v6, :cond_5

    if-ge v4, v8, :cond_5

    .line 238
    aget v14, v7, v2

    aget v15, v9, v4

    if-ge v14, v15, :cond_3

    .line 239
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    :goto_3
    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto :goto_2

    .line 240
    :cond_3
    aget v14, v7, v2

    aget v15, v9, v4

    if-le v14, v15, :cond_4

    .line 241
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_3

    .line 242
    .end local v3    # "j":I
    .restart local v4    # "j":I
    :cond_4
    aget v14, v7, v2

    aget v15, v9, v4

    if-ne v14, v15, :cond_a

    .line 243
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    const/4 v14, -0x1

    aput v14, v9, v4

    .line 244
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 249
    .end local v3    # "j":I
    .restart local v4    # "j":I
    :cond_5
    const/4 v11, 0x0

    .line 250
    .local v11, "totalCount":I
    const/4 v2, 0x0

    move v12, v11

    .end local v11    # "totalCount":I
    .local v12, "totalCount":I
    :goto_4
    add-int v14, v6, v8

    if-ge v2, v14, :cond_7

    .line 251
    if-ge v2, v6, :cond_6

    .line 253
    if-eqz v7, :cond_9

    .line 254
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "totalCount":I
    .restart local v11    # "totalCount":I
    aget v14, v7, v2

    aput v14, v13, v12

    .line 250
    :goto_5
    add-int/lit8 v2, v2, 0x1

    move v12, v11

    .end local v11    # "totalCount":I
    .restart local v12    # "totalCount":I
    goto :goto_4

    .line 258
    :cond_6
    sub-int v14, v2, v6

    aget v14, v9, v14

    if-ltz v14, :cond_9

    .line 260
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "totalCount":I
    .restart local v11    # "totalCount":I
    sub-int v14, v2, v6

    aget v14, v9, v14

    aput v14, v13, v12

    goto :goto_5

    .line 265
    .end local v11    # "totalCount":I
    .restart local v12    # "totalCount":I
    :cond_7
    if-gtz v12, :cond_8

    .line 266
    const/4 v14, 0x0

    return-object v14

    .line 269
    :cond_8
    new-array v10, v12, [I

    .line 270
    .local v10, "result":[I
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v10, v15, v12}, Ljava/lang/System;->arraycopy([II[III)V

    .line 271
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->sortIndices([I)[I

    move-result-object v14

    return-object v14

    .end local v10    # "result":[I
    :cond_9
    move v11, v12

    .end local v12    # "totalCount":I
    .restart local v11    # "totalCount":I
    goto :goto_5

    .end local v11    # "totalCount":I
    :cond_a
    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_3
.end method

.method private getNameMatchedContactIds(Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;Landroid/util/SparseArray;)[I
    .locals 15
    .param p1, "digits"    # Ljava/lang/String;
    .param p2, "smartSearchCursor"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 108
    .local p3, "matchResult":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;>;"
    if-nez p2, :cond_0

    .line 109
    const/4 v12, 0x0

    return-object v12

    .line 113
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;->getCount()I

    move-result v3

    .line 114
    .local v3, "count":I
    new-array v8, v3, [I

    .line 115
    .local v8, "matchedIds":[I
    const/4 v6, 0x0

    .line 116
    .local v6, "matchedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v7, v6

    .end local v6    # "matchedCount":I
    .local v7, "matchedCount":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 119
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;->mContactId:[J

    aget-wide v12, v12, v4

    long-to-int v2, v12

    .line 120
    .local v2, "contactId":I
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;->mKey:[Ljava/lang/String;

    aget-object v5, v12, v4

    .line 121
    .local v5, "key":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;->mType:[I

    aget v11, v12, v4

    .line 122
    .local v11, "type":I
    iget-object v12, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mSmartMatch:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;

    move-object/from16 v0, p1

    invoke-virtual {v12, v5, v0, v11}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->match(Ljava/lang/String;Ljava/lang/String;I)Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    move-result-object v10

    .line 123
    .local v10, "state":Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;
    if-nez v10, :cond_1

    move v6, v7

    .line 116
    .end local v7    # "matchedCount":I
    .restart local v6    # "matchedCount":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6    # "matchedCount":I
    .restart local v7    # "matchedCount":I
    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v10, v11}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->setType(I)V

    .line 127
    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v10}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 128
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "matchedCount":I
    .restart local v6    # "matchedCount":I
    aput v2, v8, v7

    goto :goto_1

    .line 131
    .end local v2    # "contactId":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "matchedCount":I
    .end local v10    # "state":Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;
    .end local v11    # "type":I
    .restart local v7    # "matchedCount":I
    :cond_2
    if-gtz v7, :cond_3

    .line 132
    const/4 v12, 0x0

    return-object v12

    .line 134
    :cond_3
    new-array v9, v7, [I

    .line 135
    .local v9, "result":[I
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v8, v12, v9, v13, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 136
    sget-boolean v12, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v12, :cond_4

    .line 137
    const-string/jumbo v12, "ContactSearch"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Name matched contacts ids count="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_4
    return-object v9
.end method

.method private getNameMatchedContactTableIndices([ILcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;)[I
    .locals 12
    .param p1, "matchedContactIds"    # [I
    .param p2, "tinyContactsCursor"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;

    .prologue
    .line 149
    if-eqz p1, :cond_0

    array-length v8, p1

    if-gtz v8, :cond_1

    .line 150
    :cond_0
    const/4 v8, 0x0

    return-object v8

    .line 149
    :cond_1
    if-eqz p2, :cond_0

    .line 154
    array-length v2, p1

    .line 155
    .local v2, "count":I
    invoke-virtual {p2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->getCount()I

    move-result v0

    .line 156
    .local v0, "contactsCount":I
    iget-object v1, p2, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mContactId:[J

    .line 157
    .local v1, "contactsCursorIds":[J
    new-array v6, v0, [I

    .line 158
    .local v6, "matchedContactsCursorIndices":[I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    const/4 v7, 0x0

    .line 159
    .local v7, "matchedCount":I
    :cond_2
    :goto_0
    if-ge v5, v2, :cond_5

    if-ge v3, v0, :cond_5

    .line 160
    aget v8, p1, v5

    aget-wide v10, v1, v3

    long-to-int v9, v10

    if-le v8, v9, :cond_3

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_3
    aget v8, p1, v5

    aget-wide v10, v1, v3

    long-to-int v9, v10

    if-ge v8, v9, :cond_4

    .line 163
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 164
    :cond_4
    aget v8, p1, v5

    aget-wide v10, v1, v3

    long-to-int v9, v10

    if-ne v8, v9, :cond_2

    .line 165
    aput v3, v6, v7

    .line 166
    add-int/lit8 v7, v7, 0x1

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 170
    :cond_5
    if-gtz v7, :cond_6

    .line 171
    const/4 v8, 0x0

    return-object v8

    .line 173
    :cond_6
    new-array v4, v7, [I

    .line 174
    .local v4, "indices":[I
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v8, v4, v9, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 175
    return-object v4
.end method

.method private getNumberMatchedContactTableIndices(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;)[I
    .locals 10
    .param p1, "key"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;
    .param p2, "tinyContactsCursor"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 185
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->getCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 186
    :cond_0
    return-object v8

    .line 188
    :cond_1
    invoke-virtual {p2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->getCount()I

    move-result v0

    .line 189
    .local v0, "count":I
    new-array v6, v0, [I

    .line 190
    .local v6, "matchedIndices":[I
    const/4 v4, 0x0

    .line 191
    .local v4, "matchedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v5, v4

    .end local v4    # "matchedCount":I
    .local v5, "matchedCount":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 192
    iget-object v7, p2, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mNumber:[Ljava/lang/String;

    aget-object v7, v7, v1

    if-nez v7, :cond_2

    move v4, v5

    .line 191
    .end local v5    # "matchedCount":I
    .restart local v4    # "matchedCount":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4    # "matchedCount":I
    .restart local v5    # "matchedCount":I
    goto :goto_0

    .line 195
    :cond_2
    iget-object v7, p2, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mNumber:[Ljava/lang/String;

    aget-object v7, v7, v1

    .line 196
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 195
    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->matchNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 197
    .local v3, "matched":Z
    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->hasCountryCode()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 198
    iget-object v7, p2, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mNumber:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 200
    :cond_3
    if-nez v3, :cond_4

    move v4, v5

    .line 201
    .end local v5    # "matchedCount":I
    .restart local v4    # "matchedCount":I
    goto :goto_1

    .line 203
    .end local v4    # "matchedCount":I
    .restart local v5    # "matchedCount":I
    :cond_4
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "matchedCount":I
    .restart local v4    # "matchedCount":I
    aput v1, v6, v5

    goto :goto_1

    .line 206
    .end local v3    # "matched":Z
    .end local v4    # "matchedCount":I
    .restart local v5    # "matchedCount":I
    :cond_5
    new-array v2, v5, [I

    .line 207
    .local v2, "indices":[I
    invoke-static {v6, v9, v2, v9, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 208
    return-object v2
.end method

.method private sortIndices([I)[I
    .locals 10
    .param p1, "indices"    # [I

    .prologue
    const/4 v7, 0x0

    .line 275
    if-eqz p1, :cond_0

    array-length v6, p1

    if-gtz v6, :cond_1

    :cond_0
    return-object v7

    .line 277
    :cond_1
    array-length v1, p1

    .line 278
    .local v1, "count":I
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 279
    .local v4, "indicesToSortFields":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 280
    .local v5, "sortedIndices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 281
    aget v2, p1, v3

    .line 282
    .local v2, "currentIndex":I
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mTinyContactsCursor:Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;

    invoke-virtual {v6, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->getAcutalIndex(I)I

    move-result v0

    .line 284
    .local v0, "actualIndex":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;

    .line 286
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mTinyContactsCursor:Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;

    iget-object v7, v7, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mTimesContacted:[I

    aget v7, v7, v2

    .line 287
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mTinyContactsCursor:Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;

    iget-object v8, v8, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mTimesUsed:[I

    aget v8, v8, v2

    .line 288
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mTinyContactsCursor:Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;

    iget-object v9, v9, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mDisplayName:[Ljava/lang/String;

    aget-object v9, v9, v0

    .line 285
    invoke-direct {v6, v7, v8, v9}, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SortFields;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 292
    .end local v0    # "actualIndex":I
    .end local v2    # "currentIndex":I
    :cond_2
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$1;

    invoke-direct {v6, p0, v4}, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$1;-><init>(Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;Landroid/util/SparseArray;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 319
    invoke-static {v5}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v6

    return-object v6
.end method

.method public static startConvertService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    if-nez p0, :cond_0

    .line 95
    return-void

    .line 98
    :cond_0
    const-string/jumbo v1, "com.sonyericsson.android.smartsearch.NameConvertService.START"

    .line 97
    invoke-static {p0, v1}, Lcom/sonyericsson/android/socialphonebook/util/IntentFactory;->getExplicitServiceIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 93
    return-void
.end method


# virtual methods
.method protected constructHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 456
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "ContactSearch"

    .line 457
    const/16 v3, 0xa

    .line 456
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 458
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 459
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 460
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 461
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Thread.getLooper() returned null."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 463
    :cond_0
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SearchHandler;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$SearchHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;Landroid/os/Looper;)V

    return-object v2
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->destroyHandler()V

    .line 89
    return-void
.end method

.method protected search(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;)V
    .locals 9
    .param p1, "key"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v8, 0x0

    .line 326
    const-string/jumbo v5, "ContactSearch"

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->getInstance()Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;

    move-result-object v0

    .line 329
    .local v0, "cache":Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;
    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->isCacheValid(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 330
    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->isCacheValid(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 334
    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->getCache(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;

    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mTinyContactsCursor:Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;

    .line 336
    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->getCache(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;

    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mSmartSearchCursor:Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;

    .line 339
    const/4 v5, 0x3

    new-array v1, v5, [Landroid/database/Cursor;

    .line 341
    .local v1, "cursors":[Landroid/database/Cursor;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->searchUnsavedCalllog(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;)Landroid/database/Cursor;

    move-result-object v5

    aput-object v5, v1, v6

    .line 345
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->isInvalid()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 357
    :cond_0
    :goto_0
    new-instance v4, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mMatchResult:Landroid/util/SparseArray;

    invoke-direct {v4, v1, p1, v5}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchResultCursor;-><init>([Landroid/database/Cursor;Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;Landroid/util/SparseArray;)V

    .line 358
    .local v4, "result":Landroid/database/Cursor;
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_1

    .line 359
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 360
    const/4 v4, 0x0

    .line 362
    .end local v4    # "result":Landroid/database/Cursor;
    :cond_1
    if-eqz p1, :cond_2

    .line 363
    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->getListener()Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;

    move-result-object v2

    .line 364
    .local v2, "listener":Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;
    if-eqz v2, :cond_7

    .line 365
    invoke-interface {v2, v4}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;->onQueryComplete(Landroid/database/Cursor;)V

    .line 371
    .end local v2    # "listener":Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;
    :cond_2
    :goto_1
    const-string/jumbo v5, "ContactSearch"

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 325
    return-void

    .line 331
    .end local v1    # "cursors":[Landroid/database/Cursor;
    :cond_3
    const-wide/16 v6, 0xc8

    invoke-virtual {p0, p1, v6, v7}, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->sendSearchMessage(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;J)V

    .line 332
    return-void

    .line 346
    .restart local v1    # "cursors":[Landroid/database/Cursor;
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->getMatchedIndices(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;)[I

    move-result-object v3

    .line 347
    .local v3, "matchedIndices":[I
    if-eqz v3, :cond_5

    array-length v5, v3

    if-lez v5, :cond_5

    .line 349
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/cursor/SubCursor;

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mTinyContactsCursor:Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;

    invoke-direct {v5, v6, v3}, Lcom/sonyericsson/android/socialphonebook/cursor/SubCursor;-><init>(Landroid/database/Cursor;[I)V

    aput-object v5, v1, v8

    .line 351
    :cond_5
    sget-boolean v5, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 352
    const-string/jumbo v6, "ContactSearch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\tsearchNameNumber["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "] matched count="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 353
    aget-object v5, v1, v8

    if-nez v5, :cond_6

    const-string/jumbo v5, "0"

    .line 352
    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_6
    aget-object v5, v1, v8

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 366
    .end local v3    # "matchedIndices":[I
    .restart local v2    # "listener":Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;
    :cond_7
    if-eqz v4, :cond_2

    .line 367
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 368
    const/4 v4, 0x0

    .local v4, "result":Landroid/database/Cursor;
    goto :goto_1
.end method

.method protected searchUnsavedCalllog(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;)Landroid/database/Cursor;
    .locals 9
    .param p1, "key"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;

    .prologue
    const/4 v4, 0x0

    .line 380
    const-string/jumbo v0, "ContactSearch"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 381
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    :cond_0
    return-object v4

    .line 385
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .local v8, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "number IS NOT NULL "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 387
    const-string/jumbo v1, " AND "

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 388
    const-string/jumbo v1, "date"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 388
    const-string/jumbo v1, " IN ("

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 389
    const-string/jumbo v1, "SELECT MAX("

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 390
    const-string/jumbo v1, "date"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 391
    const-string/jumbo v1, ") FROM "

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 392
    const-string/jumbo v1, "calls"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 393
    const-string/jumbo v1, " WHERE ("

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 394
    const-string/jumbo v1, "date"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 395
    const-string/jumbo v1, " > "

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 396
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getCutoffTime()J

    move-result-wide v2

    .line 386
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 397
    const-string/jumbo v1, " AND ("

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 398
    const-string/jumbo v1, "name"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 399
    const-string/jumbo v1, " IS NULL"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 400
    const-string/jumbo v1, " OR "

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 401
    const-string/jumbo v1, "name"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 402
    const-string/jumbo v1, "=\'\')"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 403
    const-string/jumbo v1, " AND "

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 404
    const-string/jumbo v1, "number"

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->getSearchNumberSQLStatement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 405
    const-string/jumbo v1, " AND "

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 406
    const-string/jumbo v1, "presentation"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 407
    const-string/jumbo v1, " = \'"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 407
    const/4 v1, 0x1

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 407
    const-string/jumbo v1, "\'"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 408
    const-string/jumbo v1, ")"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 409
    const-string/jumbo v1, " GROUP BY "

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 410
    const-string/jumbo v1, "number"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 411
    const-string/jumbo v1, "))"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 412
    const-string/jumbo v1, " AND "

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 413
    const-string/jumbo v1, "number"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 413
    const-string/jumbo v1, " NOT IN ("

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 414
    const-string/jumbo v1, "SELECT REPLACE(REPLACE(REPLACE(REPLACE("

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 415
    const-string/jumbo v1, "data1"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 416
    const-string/jumbo v1, ",\'-\',\'\')"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 417
    const-string/jumbo v1, ",\'(\',\'\')"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 418
    const-string/jumbo v1, ",\')\',\'\')"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 419
    const-string/jumbo v1, ",\' \',\'\')"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 420
    const-string/jumbo v1, " FROM "

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 421
    const-string/jumbo v1, "data"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 422
    const-string/jumbo v1, " WHERE "

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 423
    const-string/jumbo v1, "mimetype_id"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 424
    const-string/jumbo v1, " = "

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 425
    const/4 v1, 0x5

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 428
    const-string/jumbo v0, "ContactSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchUnsavedCalllog("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string/jumbo v0, "ContactSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "where: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    .line 432
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchContants;->UNSAVED_CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "date DESC"

    .line 431
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 434
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 435
    new-instance v7, Lcom/sonyericsson/android/socialphonebook/cursor/UnsavedCallLogCursor;

    invoke-direct {v7, v6, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/UnsavedCallLogCursor;-><init>(Landroid/database/Cursor;Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;)V

    .end local v6    # "cursor":Landroid/database/Cursor;
    .local v7, "cursor":Landroid/database/Cursor;
    move-object v6, v7

    .line 437
    .end local v7    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    const-string/jumbo v0, "ContactSearch"

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 438
    return-object v6
.end method

.method public sendSearchMessage(Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;J)V
    .locals 4
    .param p1, "info"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchInfo;
    .param p2, "ms"    # J

    .prologue
    const/4 v2, 0x1

    .line 446
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mSearchHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->constructHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mSearchHandler:Landroid/os/Handler;

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mSearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 450
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mSearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 451
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 452
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch;->mSearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 445
    return-void
.end method
