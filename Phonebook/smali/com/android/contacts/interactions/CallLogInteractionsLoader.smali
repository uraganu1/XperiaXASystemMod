.class public Lcom/android/contacts/interactions/CallLogInteractionsLoader;
.super Landroid/content/AsyncTaskLoader;
.source "CallLogInteractionsLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/contacts/interactions/ContactInteraction;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/interactions/ContactInteraction;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxToRetrieve:I

.field private final mPhoneNumbers:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneNumbers"    # [Ljava/lang/String;
    .param p3, "maxToRetrieve"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mPhoneNumbers:[Ljava/lang/String;

    .line 51
    iput p3, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mMaxToRetrieve:I

    .line 48
    return-void
.end method

.method private getCallLogInteractions(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/interactions/ContactInteraction;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 113
    .local v8, "normalizedNumber":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 117
    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 121
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "date DESC LIMIT "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mMaxToRetrieve:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "orderByAndLimit":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 125
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_3

    .line 126
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 137
    if-eqz v6, :cond_2

    .line 138
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_2
    return-object v0

    .line 128
    :cond_3
    const/4 v0, -0x1

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 129
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v7, "interactions":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/interactions/ContactInteraction;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 132
    .local v9, "values":Landroid/content/ContentValues;
    invoke-static {v6, v9}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 133
    new-instance v0, Lcom/android/contacts/interactions/CallLogInteraction;

    invoke-direct {v0, v9}, Lcom/android/contacts/interactions/CallLogInteraction;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    .end local v7    # "interactions":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/interactions/ContactInteraction;>;"
    .end local v9    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    .line 137
    if-eqz v6, :cond_4

    .line 138
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_4
    throw v0

    .line 137
    .restart local v7    # "interactions":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/interactions/ContactInteraction;>;"
    :cond_5
    if-eqz v6, :cond_6

    .line 138
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 135
    :cond_6
    return-object v7
.end method

.method static pruneDuplicateCallLogInteractions(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .param p1, "maxToRetrieve"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/interactions/ContactInteraction;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/interactions/ContactInteraction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "interactions":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/interactions/ContactInteraction;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v1, "subsetInteractions":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/interactions/ContactInteraction;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 98
    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/interactions/ContactInteraction;

    invoke-interface {v2}, Lcom/android/contacts/interactions/ContactInteraction;->getInteractionDate()J

    move-result-wide v4

    .line 99
    add-int/lit8 v2, v0, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/interactions/ContactInteraction;

    invoke-interface {v2}, Lcom/android/contacts/interactions/ContactInteraction;->getInteractionDate()J

    move-result-wide v2

    .line 98
    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    .line 97
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/interactions/ContactInteraction;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, p1, :cond_0

    .line 107
    :cond_2
    return-object v1
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 163
    check-cast p1, Ljava/util/List;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/interactions/ContactInteraction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/interactions/ContactInteraction;>;"
    iput-object p1, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mData:Ljava/util/List;

    .line 165
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 163
    :cond_0
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/interactions/ContactInteraction;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "android.hardware.telephony"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    iget-object v3, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mPhoneNumbers:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 58
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 57
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mPhoneNumbers:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mMaxToRetrieve:I

    if-lez v3, :cond_0

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "interactions":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/interactions/ContactInteraction;>;"
    iget-object v3, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mPhoneNumbers:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 63
    .local v1, "number":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->getCallLogInteractions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "number":Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/android/contacts/interactions/CallLogInteractionsLoader$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/interactions/CallLogInteractionsLoader$1;-><init>(Lcom/android/contacts/interactions/CallLogInteractionsLoader;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 79
    iget-object v2, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mPhoneNumbers:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 80
    return-object v0

    .line 82
    :cond_3
    iget v2, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mMaxToRetrieve:I

    invoke-static {v0, v2}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->pruneDuplicateCallLogInteractions(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 175
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->onStopLoading()V

    .line 176
    iget-object v0, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 171
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 147
    iget-object v0, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mData:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->deliverResult(Ljava/util/List;)V

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mData:Ljava/util/List;

    if-nez v0, :cond_2

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->forceLoad()V

    .line 144
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->cancelLoad()Z

    .line 157
    return-void
.end method
