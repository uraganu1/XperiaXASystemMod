.class public Lcom/android/contacts/interactions/SmsInteractionsLoader;
.super Landroid/content/AsyncTaskLoader;
.source "SmsInteractionsLoader.java"


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


# static fields
.field private static final TAG:Ljava/lang/String;


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

.field private mMaxToRetrieve:I

.field private mPhoneNums:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/contacts/interactions/SmsInteractionsLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/interactions/SmsInteractionsLoader;->TAG:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneNums"    # [Ljava/lang/String;
    .param p3, "maxToRetrieve"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 58
    sget-object v0, Lcom/android/contacts/interactions/SmsInteractionsLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SmsInteractionsLoader"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iput-object p2, p0, Lcom/android/contacts/interactions/SmsInteractionsLoader;->mPhoneNums:[Ljava/lang/String;

    .line 60
    iput p3, p0, Lcom/android/contacts/interactions/SmsInteractionsLoader;->mMaxToRetrieve:I

    .line 56
    return-void
.end method

.method private getSmsCursorFromThreads(Ljava/util/List;)Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p1, "threadIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 108
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 109
    return-object v2

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "thread_id IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/android/contacts/interactions/ContactInteractionUtil;->questionMarks(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/interactions/SmsInteractionsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 115
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 118
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "date DESC LIMIT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 120
    iget v6, p0, Lcom/android/contacts/interactions/SmsInteractionsLoader;->mMaxToRetrieve:I

    .line 119
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 143
    check-cast p1, Ljava/util/List;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/SmsInteractionsLoader;->deliverResult(Ljava/util/List;)V

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
    .line 144
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/interactions/ContactInteraction;>;"
    iput-object p1, p0, Lcom/android/contacts/interactions/SmsInteractionsLoader;->mData:Ljava/util/List;

    .line 145
    invoke-virtual {p0}, Lcom/android/contacts/interactions/SmsInteractionsLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 143
    :cond_0
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/contacts/interactions/SmsInteractionsLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 12
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
    const/4 v6, 0x0

    .line 65
    sget-object v7, Lcom/android/contacts/interactions/SmsInteractionsLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "loadInBackground"

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/contacts/interactions/SmsInteractionsLoader;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "android.hardware.telephony"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 68
    iget-object v7, p0, Lcom/android/contacts/interactions/SmsInteractionsLoader;->mPhoneNums:[Ljava/lang/String;

    if-nez v7, :cond_1

    .line 69
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    return-object v6

    .line 68
    :cond_1
    iget-object v7, p0, Lcom/android/contacts/interactions/SmsInteractionsLoader;->mPhoneNums:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_0

    .line 73
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v4, "threadIdStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/contacts/interactions/SmsInteractionsLoader;->mPhoneNums:[Ljava/lang/String;

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v3, v7, v6

    .line 77
    .local v3, "phone":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/interactions/SmsInteractionsLoader;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v3}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    .line 76
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 85
    .end local v3    # "phone":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/contacts/interactions/SmsInteractionsLoader;->getSmsCursorFromThreads(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v0

    .line 86
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_4

    .line 88
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v2, "interactions":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/interactions/ContactInteraction;>;"
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 90
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 91
    .local v5, "values":Landroid/content/ContentValues;
    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 92
    new-instance v6, Lcom/android/contacts/interactions/SmsInteraction;

    invoke-direct {v6, v5}, Lcom/android/contacts/interactions/SmsInteraction;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 96
    .end local v2    # "interactions":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/interactions/ContactInteraction;>;"
    .end local v5    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v6

    .line 97
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 96
    throw v6

    .line 97
    .restart local v2    # "interactions":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/interactions/ContactInteraction;>;"
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 95
    return-object v2

    .line 101
    .end local v2    # "interactions":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/interactions/ContactInteraction;>;"
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    return-object v6

    .line 78
    .end local v0    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "phone":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 155
    invoke-virtual {p0}, Lcom/android/contacts/interactions/SmsInteractionsLoader;->onStopLoading()V

    .line 156
    iget-object v0, p0, Lcom/android/contacts/interactions/SmsInteractionsLoader;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/contacts/interactions/SmsInteractionsLoader;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 127
    iget-object v0, p0, Lcom/android/contacts/interactions/SmsInteractionsLoader;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/contacts/interactions/SmsInteractionsLoader;->mData:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/contacts/interactions/SmsInteractionsLoader;->deliverResult(Ljava/util/List;)V

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/interactions/SmsInteractionsLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/interactions/SmsInteractionsLoader;->mData:Ljava/util/List;

    if-nez v0, :cond_2

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/interactions/SmsInteractionsLoader;->forceLoad()V

    .line 124
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/contacts/interactions/SmsInteractionsLoader;->cancelLoad()Z

    .line 137
    return-void
.end method
