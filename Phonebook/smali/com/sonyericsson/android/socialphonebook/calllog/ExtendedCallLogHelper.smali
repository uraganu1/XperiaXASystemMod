.class public Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;
.super Ljava/lang/Object;
.source "ExtendedCallLogHelper.java"


# instance fields
.field private mExtensionMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->mExtensionMap:Landroid/util/SparseArray;

    .line 30
    if-eqz p1, :cond_1

    .line 31
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    const-string/jumbo v4, "call_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 32
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 35
    .local v0, "callId":I
    const-string/jumbo v4, "extension"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 34
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "extension":Ljava/lang/String;
    const-string/jumbo v4, "value"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->mExtensionMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;

    .line 41
    .local v1, "currentExtendedCallLogItem":Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;
    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;->addItem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;

    .end local v1    # "currentExtendedCallLogItem":Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;
    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;-><init>()V

    .line 45
    .restart local v1    # "currentExtendedCallLogItem":Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;->addItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->mExtensionMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 28
    .end local v0    # "callId":I
    .end local v1    # "currentExtendedCallLogItem":Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;
    .end local v2    # "extension":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "extensionMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->mExtensionMap:Landroid/util/SparseArray;

    .line 24
    return-void
.end method


# virtual methods
.method public containsConferenceCall([I)Z
    .locals 5
    .param p1, "callIds"    # [I

    .prologue
    const/4 v2, 0x0

    .line 119
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget v0, p1, v1

    .line 120
    .local v0, "callId":I
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->isConferenceCall(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    const/4 v1, 0x1

    return v1

    .line 119
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "callId":I
    :cond_1
    return v2
.end method

.method public containsHdVoiceCall([I)Z
    .locals 5
    .param p1, "callIds"    # [I

    .prologue
    const/4 v2, 0x0

    .line 179
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget v0, p1, v1

    .line 180
    .local v0, "callId":I
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->isHdVoiceCall(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    const/4 v1, 0x1

    return v1

    .line 179
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "callId":I
    :cond_1
    return v2
.end method

.method public containsVideoCall([I)Z
    .locals 5
    .param p1, "callIds"    # [I

    .prologue
    const/4 v2, 0x0

    .line 195
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget v0, p1, v1

    .line 196
    .local v0, "callId":I
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->isVideoCall(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    const/4 v1, 0x1

    return v1

    .line 195
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "callId":I
    :cond_1
    return v2
.end method

.method public getExtensionMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->mExtensionMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getLocation(I)Ljava/lang/String;
    .locals 3
    .param p1, "callId"    # I

    .prologue
    const/4 v2, 0x0

    .line 148
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->mExtensionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;

    .line 149
    .local v0, "extendedCallLogItem":Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;->getLocation()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 152
    :cond_0
    return-object v2
.end method

.method public getSubject(I)Ljava/lang/String;
    .locals 3
    .param p1, "callId"    # I

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->mExtensionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;

    .line 135
    .local v0, "extendedCallLogItem":Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;->getSubject()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 138
    :cond_0
    return-object v2
.end method

.method public hasCallItems(I)Z
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 77
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->mExtensionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;

    .line 78
    .local v0, "extendedCallLogItem":Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;->hasCallItems()Z

    move-result v1

    return v1

    .line 81
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isConferenceCall(I)Z
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 105
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->mExtensionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;

    .line 106
    .local v0, "extendedCallLogItem":Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;->isConferenceCall()Z

    move-result v1

    return v1

    .line 109
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isHdVoiceCall(I)Z
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 163
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->mExtensionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;

    .line 164
    .local v0, "extendedCallLogItem":Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;->isHdVoice()Z

    move-result v1

    return v1

    .line 167
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isUrgent(I)Z
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 63
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->mExtensionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;

    .line 64
    .local v0, "extendedCallLogItem":Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;->isUrgentCall()Z

    move-result v1

    return v1

    .line 67
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isVideoCall(I)Z
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 91
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogHelper;->mExtensionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;

    .line 92
    .local v0, "extendedCallLogItem":Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ExtendedCallLogItem;->isVideoCall()Z

    move-result v1

    return v1

    .line 95
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
