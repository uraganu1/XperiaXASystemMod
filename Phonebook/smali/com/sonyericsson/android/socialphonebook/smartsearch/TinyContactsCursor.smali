.class public Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;
.super Landroid/database/AbstractCursor;
.source "TinyContactsCursor.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountType:[I

.field public mContactId:[J

.field private mCount:I

.field public mDisplayName:[Ljava/lang/String;

.field public mId:[J

.field private mIndices:[I

.field private mLookupKey:[Ljava/lang/String;

.field public mNumber:[Ljava/lang/String;

.field public mNumberLabel:[Ljava/lang/String;

.field public mNumberType:[I

.field public mPhotoId:[I

.field public mTimesContacted:[I

.field public mTimesUsed:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 66
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->buildTinyCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "TinyContactsCursor was not built due an error."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mCount:I

    goto :goto_0
.end method

.method private buildTinyCursor(Landroid/database/Cursor;)V
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 74
    if-nez p1, :cond_0

    .line 75
    iput v7, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mCount:I

    .line 76
    return-void

    .line 79
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    iput v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mCount:I

    .line 81
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->getContactsIdCount(Landroid/database/Cursor;)I

    move-result v0

    .line 82
    .local v0, "actualCount":I
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mCount:I

    if-lez v6, :cond_1

    if-gtz v0, :cond_2

    .line 83
    :cond_1
    iput v7, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mCount:I

    .line 84
    return-void

    .line 88
    :cond_2
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mCount:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mIndices:[I

    .line 89
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mCount:I

    new-array v6, v6, [J

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mId:[J

    .line 90
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mCount:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mNumber:[Ljava/lang/String;

    .line 91
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mCount:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mNumberType:[I

    .line 92
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mCount:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mNumberLabel:[Ljava/lang/String;

    .line 93
    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mDisplayName:[Ljava/lang/String;

    .line 94
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mCount:I

    new-array v6, v6, [J

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mContactId:[J

    .line 95
    new-array v6, v0, [I

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mPhotoId:[I

    .line 96
    new-array v6, v0, [I

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mAccountType:[I

    .line 97
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mCount:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mLookupKey:[Ljava/lang/String;

    .line 98
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mCount:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mTimesContacted:[I

    .line 99
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mCount:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mTimesUsed:[I

    .line 101
    sget-object v6, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "smartsearch.TinyContactsCursor():Number items = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 102
    const-string/jumbo v9, " Contacts items="

    .line 101
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v3, 0x0

    .line 105
    .local v3, "i":I
    const/4 v1, -0x1

    .line 107
    .local v1, "actualPos":I
    const/4 v5, -0x1

    .line 108
    .local v5, "lastContactId":I
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->isJapanLocale()Z

    move-result v4

    .line 109
    .local v4, "isJapanLocal":Z
    const/4 v6, -0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 110
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 111
    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mCount:I

    if-lt v3, v6, :cond_4

    .line 159
    :cond_3
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 73
    return-void

    .line 114
    :cond_4
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mId:[J

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    aput-wide v8, v6, v3

    .line 115
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mNumber:[Ljava/lang/String;

    .line 116
    const/4 v8, 0x3

    .line 115
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    .line 117
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mNumberType:[I

    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    aput v8, v6, v3

    .line 118
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mNumberType:[I

    aget v6, v6, v3

    if-nez v6, :cond_5

    .line 119
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mNumberLabel:[Ljava/lang/String;

    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    .line 123
    :goto_2
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mTimesContacted:[I

    .line 124
    const/16 v8, 0xa

    .line 123
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    aput v8, v6, v3

    .line 125
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mTimesUsed:[I

    .line 126
    const/16 v8, 0xb

    .line 125
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    aput v8, v6, v3

    .line 128
    const/4 v6, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 129
    .local v2, "contactId":I
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mContactId:[J

    int-to-long v8, v2

    aput-wide v8, v6, v3

    .line 131
    if-eq v5, v2, :cond_7

    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 133
    if-lt v1, v0, :cond_6

    .line 134
    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mCount:I

    goto :goto_1

    .line 121
    .end local v2    # "contactId":I
    :cond_5
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mNumberLabel:[Ljava/lang/String;

    aput-object v10, v6, v3

    goto :goto_2

    .line 137
    .restart local v2    # "contactId":I
    :cond_6
    if-eqz v4, :cond_8

    .line 138
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mDisplayName:[Ljava/lang/String;

    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->getAvailableNameForJP(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v1

    .line 143
    :goto_3
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mPhotoId:[I

    .line 144
    const/4 v8, 0x6

    .line 143
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    aput v8, v6, v1

    .line 149
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mAccountType:[I

    .line 150
    const/4 v8, 0x7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->getAccountType(Ljava/lang/String;)I

    move-result v8

    .line 149
    aput v8, v6, v1

    .line 152
    :cond_7
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mIndices:[I

    if-gez v1, :cond_9

    move v6, v7

    :goto_4
    aput v6, v8, v3

    .line 154
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mLookupKey:[Ljava/lang/String;

    const/16 v8, 0x9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    .line 156
    move v5, v2

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 140
    :cond_8
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mDisplayName:[Ljava/lang/String;

    .line 141
    const/4 v8, 0x4

    .line 140
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v1

    goto :goto_3

    :cond_9
    move v6, v1

    .line 152
    goto :goto_4
.end method

.method private getAccountType(Ljava/lang/String;)I
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 168
    const-string/jumbo v0, "com.sonyericsson.adncontacts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x0

    return v0

    .line 170
    :cond_0
    const-string/jumbo v0, "com.sonyericsson.adnsub1contacts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    const/4 v0, 0x2

    return v0

    .line 172
    :cond_1
    const-string/jumbo v0, "com.sonyericsson.adnsub2contacts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    const/4 v0, 0x3

    return v0

    .line 175
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private getContactsIdCount(Landroid/database/Cursor;)I
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 198
    const/4 v1, 0x0

    .line 200
    .local v1, "count":I
    const/4 v2, -0x1

    .line 201
    .local v2, "lastContactId":I
    const/4 v3, -0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 202
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 204
    .local v0, "contactId":I
    if-eq v0, v2, :cond_0

    .line 205
    add-int/lit8 v1, v1, 0x1

    .line 207
    :cond_0
    move v2, v0

    goto :goto_0

    .line 209
    .end local v0    # "contactId":I
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 210
    return v1
.end method


# virtual methods
.method public getAcutalIndex(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchContants;->CONTACT_DATA_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mCount:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 283
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "getDouble is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFloat(I)F
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 279
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "getFloat is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .locals 6
    .param p1, "column"    # I

    .prologue
    const-wide/16 v4, -0x1

    .line 248
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mPos:I

    if-gez v1, :cond_0

    .line 249
    return-wide v4

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mIndices:[I

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mPos:I

    aget v0, v1, v2

    .line 252
    .local v0, "actualPos":I
    packed-switch p1, :pswitch_data_0

    .line 264
    :pswitch_0
    return-wide v4

    .line 254
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mId:[J

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mPos:I

    aget-wide v2, v1, v2

    return-wide v2

    .line 256
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mContactId:[J

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mPos:I

    aget-wide v2, v1, v2

    return-wide v2

    .line 258
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mPhotoId:[I

    aget v1, v1, v0

    int-to-long v2, v1

    return-wide v2

    .line 260
    :pswitch_4
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mNumberType:[I

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mPos:I

    aget v1, v1, v2

    int-to-long v2, v1

    return-wide v2

    .line 262
    :pswitch_5
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mAccountType:[I

    aget v1, v1, v0

    int-to-long v2, v1

    return-wide v2

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public getShort(I)S
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 275
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "getShort is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "column"    # I

    .prologue
    const/4 v3, 0x0

    .line 226
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mPos:I

    if-gez v1, :cond_0

    .line 227
    return-object v3

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mIndices:[I

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mPos:I

    aget v0, v1, v2

    .line 230
    .local v0, "actualPos":I
    packed-switch p1, :pswitch_data_0

    .line 240
    :pswitch_0
    return-object v3

    .line 232
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mNumberLabel:[Ljava/lang/String;

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mPos:I

    aget-object v1, v1, v2

    return-object v1

    .line 234
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mNumber:[Ljava/lang/String;

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mPos:I

    aget-object v1, v1, v2

    return-object v1

    .line 236
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mDisplayName:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 238
    :pswitch_4
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mLookupKey:[Ljava/lang/String;

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mPos:I

    aget-object v1, v1, v2

    return-object v1

    .line 230
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 2
    .param p1, "column"    # I

    .prologue
    const/4 v1, 0x0

    .line 268
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->mPos:I

    if-gez v0, :cond_0

    .line 269
    const/4 v0, 0x1

    return v0

    .line 271
    :cond_0
    return v1
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 180
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerContentObserver, ignored"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 189
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerDataSetObserver, ignored"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 185
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterContentObserver, ignored"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 194
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterDataSetObserver, ignored"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method
