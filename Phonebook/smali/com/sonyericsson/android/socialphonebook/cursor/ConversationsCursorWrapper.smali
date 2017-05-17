.class public Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;
.super Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;
.source "ConversationsCursorWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContactCount:I

.field private mContactList:[I

.field private mCurPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I)V
    .locals 11
    .param p1, "aCursor"    # Landroid/database/Cursor;
    .param p2, "aContactIdColumnIndex"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v10, -0x1

    .line 25
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/cursor/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 20
    iput v10, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->mCurPosition:I

    .line 22
    iput v7, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->mContactCount:I

    .line 27
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 28
    .local v2, "count":I
    if-nez v2, :cond_0

    .line 29
    return-void

    .line 31
    :cond_0
    new-array v7, v2, [I

    iput-object v7, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->mContactList:[I

    .line 32
    const-wide/16 v8, -0x1

    .line 33
    .local v8, "lastId":J
    const-wide/16 v4, -0x1

    .line 34
    .local v4, "currentId":J
    const/4 v3, -0x1

    .line 35
    .local v3, "index":I
    const/4 v0, 0x0

    .line 37
    .local v0, "arrIndex":I
    if-eq p2, v10, :cond_3

    const/4 v6, 0x1

    .line 38
    .local v6, "isDefaultDirectorySearch":Z
    :goto_0
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 39
    if-eqz v6, :cond_5

    .line 42
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 43
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 44
    cmp-long v7, v4, v8

    if-nez v7, :cond_4

    .line 49
    :goto_1
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 58
    :cond_2
    :goto_2
    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->mContactCount:I

    .line 24
    return-void

    .line 37
    .end local v6    # "isDefaultDirectorySearch":Z
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "isDefaultDirectorySearch":Z
    goto :goto_0

    .line 47
    :cond_4
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->mContactList:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "arrIndex":I
    .local v1, "arrIndex":I
    aput v3, v7, v0

    .line 48
    move-wide v8, v4

    move v0, v1

    .end local v1    # "arrIndex":I
    .restart local v0    # "arrIndex":I
    goto :goto_1

    .line 53
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 54
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->mContactList:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "arrIndex":I
    .restart local v1    # "arrIndex":I
    aput v3, v7, v0

    .line 55
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_6

    move v0, v1

    .end local v1    # "arrIndex":I
    .restart local v0    # "arrIndex":I
    goto :goto_3

    .end local v0    # "arrIndex":I
    .restart local v1    # "arrIndex":I
    :cond_6
    move v0, v1

    .end local v1    # "arrIndex":I
    .restart local v0    # "arrIndex":I
    goto :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->mContactCount:I

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfData()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 86
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->mCurPosition:I

    if-gez v2, :cond_0

    .line 89
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getNumberOfData: cannot get the current pos."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return v4

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->mContactList:[I

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->mCurPosition:I

    aget v1, v2, v3

    .line 93
    .local v1, "startPos":I
    const/4 v0, 0x0

    .line 94
    .local v0, "endPos":I
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->mCurPosition:I

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->mContactCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    .line 95
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 99
    :goto_0
    sub-int v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    return v2

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->mContactList:[I

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->mCurPosition:I

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method

.method public onMove(II)Z
    .locals 2
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 66
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->mContactList:[I

    aget v0, v1, p2

    .line 67
    .local v0, "rawPos":I
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->mCurPosition:I

    .line 68
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/ConversationsCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    return v1
.end method
