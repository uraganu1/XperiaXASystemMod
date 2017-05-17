.class Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;
.super Ljava/lang/Object;
.source "PhoneticNameGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneticNameMap"
.end annotation


# instance fields
.field private final mCount:I

.field private final mCursor:Landroid/database/Cursor;

.field private final mSb:Ljava/lang/StringBuilder;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;->mSb:Ljava/lang/StringBuilder;

    .line 150
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;->mCursor:Landroid/database/Cursor;

    .line 151
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;->mCount:I

    .line 149
    return-void
.end method

.method private add(I)V
    .locals 3
    .param p1, "aColumnIndex"    # I

    .prologue
    .line 180
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;->mSb:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_1
    return-void
.end method

.method private binarySearch(Landroid/database/Cursor;IIJ)I
    .locals 6
    .param p1, "aCursor"    # Landroid/database/Cursor;
    .param p2, "start"    # I
    .param p3, "len"    # I
    .param p4, "key"    # J

    .prologue
    .line 205
    move v1, p2

    .line 206
    .local v1, "low":I
    const/4 v2, -0x1

    .line 207
    .local v2, "mid":I
    add-int v3, p2, p3

    add-int/lit8 v0, v3, -0x1

    .line 209
    .local v0, "high":I
    :goto_0
    if-gt v1, v0, :cond_2

    .line 210
    sub-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    add-int v2, v1, v3

    .line 211
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 212
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 213
    .local v4, "midId":J
    cmp-long v3, p4, v4

    if-lez v3, :cond_0

    .line 214
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 215
    :cond_0
    cmp-long v3, p4, v4

    if-nez v3, :cond_1

    .line 216
    return v2

    .line 218
    :cond_1
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 221
    .end local v4    # "midId":J
    :cond_2
    const/4 v3, -0x1

    return v3
.end method


# virtual methods
.method public getPhoneticName(J)Ljava/lang/String;
    .locals 9
    .param p1, "aId"    # J

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 160
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;->mCount:I

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;->binarySearch(Landroid/database/Cursor;IIJ)I

    move-result v6

    .line 161
    .local v6, "position":I
    if-ltz v6, :cond_1

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 163
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;->add(I)V

    .line 164
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;->add(I)V

    .line 165
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;->add(I)V

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 167
    return-object v7

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/PhoneticNameGetter$PhoneticNameMap;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 172
    :cond_1
    return-object v7
.end method
