.class public Lcom/sonymobile/conversations/transaction/TransactionSettings;
.super Ljava/lang/Object;
.source "TransactionSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    }
.end annotation


# static fields
.field private static final APN_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMmsApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;",
            ">;"
        }
    .end annotation
.end field

.field protected mSubscriptionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 55
    const-string/jumbo v1, "type"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "mmsc"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "mmsproxy"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "mmsport"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 54
    sput-object v0, Lcom/sonymobile/conversations/transaction/TransactionSettings;->APN_PROJECTION:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subscriptionId"    # I
    .param p3, "apnName"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings;->mSubscriptionId:I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings;->mMmsApns:Ljava/util/ArrayList;

    .line 130
    iput-object p1, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings;->mContext:Landroid/content/Context;

    .line 131
    invoke-direct {p0, p2, p3}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->loadApns(ILjava/lang/String;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "mmscUrl"    # Ljava/lang/String;
    .param p2, "proxyAddr"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .param p4, "subscriptionId"    # I

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v1, -0x1

    iput v1, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings;->mSubscriptionId:I

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings;->mMmsApns:Ljava/util/ArrayList;

    .line 143
    invoke-static {p1, p2, p3}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->createApn(Ljava/lang/String;Ljava/lang/String;I)Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;

    move-result-object v0

    .line 144
    .local v0, "mmsApn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings;->mMmsApns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iput p4, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings;->mSubscriptionId:I

    .line 142
    return-void
.end method

.method public static formatIPV4Address(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 197
    if-eqz p0, :cond_1

    .line 198
    const-string/jumbo v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "ipAddress":[Ljava/lang/String;
    array-length v3, v1

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v1, v3

    .line 203
    .local v0, "ip":Ljava/lang/String;
    const-string/jumbo v6, "^0+(?!$)"

    const-string/jumbo v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "ip":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 209
    .end local v1    # "ipAddress":[Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-object p0
.end method

.method private isValid()Z
    .locals 3

    .prologue
    .line 154
    iget-object v2, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings;->mMmsApns:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "apn$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;

    .line 155
    .local v0, "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    invoke-virtual {v0}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const/4 v2, 0x1

    return v2

    .line 159
    .end local v0    # "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private static isValidApnType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "types"    # Ljava/lang/String;
    .param p1, "requestType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 218
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    return v6

    .line 222
    :cond_0
    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_3

    aget-object v0, v3, v1

    .line 223
    .local v0, "t":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 224
    :cond_1
    return v6

    .line 222
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "t":Ljava/lang/String;
    :cond_3
    return v2
.end method

.method private declared-synchronized loadApns(ILjava/lang/String;)V
    .locals 8
    .param p1, "subId"    # I
    .param p2, "apnName"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings;->mMmsApns:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .local v4, "selection":Ljava/lang/StringBuilder;
    const/4 v6, -0x1

    if-eq p1, v6, :cond_1

    .line 243
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getSimOperator(I)[Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "mccMnc":[Ljava/lang/String;
    array-length v6, v3

    if-lez v6, :cond_1

    .line 245
    const-string/jumbo v6, "numeric"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 246
    const-string/jumbo v7, " IN ("

    .line 245
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    array-length v6, v3

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 250
    const-string/jumbo v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v2, :cond_0

    const-string/jumbo v6, ")"

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 250
    :cond_0
    const-string/jumbo v6, ","

    goto :goto_1

    .line 254
    .end local v2    # "i":I
    .end local v3    # "mccMnc":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 260
    .local v5, "selectionStr":Ljava/lang/String;
    const/4 v6, 0x1

    :try_start_1
    invoke-direct {p0, v5, v6, p2}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->querySystem(Ljava/lang/String;ZLjava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 261
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_4

    .line 279
    :cond_2
    :goto_2
    if-nez v0, :cond_5

    .line 280
    :try_start_2
    sget-boolean v6, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v6, :cond_3

    .line 281
    const-string/jumbo v6, "No Apn found in db"

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    monitor-exit p0

    .line 283
    return-void

    .line 264
    :cond_4
    const/4 v6, 0x0

    :try_start_3
    invoke-direct {p0, v5, v6, p2}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->querySystem(Ljava/lang/String;ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 265
    if-nez v0, :cond_2

    .line 268
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->querySystem(Ljava/lang/String;ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 269
    if-nez v0, :cond_2

    .line 272
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->querySystem(Ljava/lang/String;ZLjava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    goto :goto_2

    .line 275
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/SecurityException;
    monitor-exit p0

    .line 277
    return-void

    .line 286
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_5
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 287
    invoke-direct {p0, v0}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->populateApn(Landroid/database/Cursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 290
    :cond_6
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 292
    invoke-direct {p0}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->isValid()Z

    move-result v6

    if-nez v6, :cond_7

    .line 293
    const-string/jumbo v6, "No valid APN settings."

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_7
    monitor-exit p0

    .line 238
    return-void

    .line 289
    :catchall_0
    move-exception v6

    .line 290
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 289
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v4    # "selection":Ljava/lang/StringBuilder;
    .end local v5    # "selectionStr":Ljava/lang/String;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private populateApn(Landroid/database/Cursor;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 299
    :cond_0
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "mms"

    invoke-static {v6, v7}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->isValidApnType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 300
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 301
    .local v5, "serviceCenter":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->formatIPV4Address(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "proxyAddress":Ljava/lang/String;
    const/16 v4, 0x50

    .line 303
    .local v4, "proxyPort":I
    sget-boolean v6, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v6, :cond_1

    .line 304
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "from db mServiceCenter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mProxyAddress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 307
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 308
    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "portString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 312
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 319
    .end local v2    # "portString":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-static {v5, v3, v4}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->createApn(Ljava/lang/String;Ljava/lang/String;I)Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;

    move-result-object v1

    .line 320
    .local v1, "mmsApn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    iget-object v6, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings;->mMmsApns:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v1    # "mmsApn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .end local v3    # "proxyAddress":Ljava/lang/String;
    .end local v4    # "proxyPort":I
    .end local v5    # "serviceCenter":Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 297
    return-void

    .line 313
    .restart local v2    # "portString":Ljava/lang/String;
    .restart local v3    # "proxyAddress":Ljava/lang/String;
    .restart local v4    # "proxyPort":I
    .restart local v5    # "serviceCenter":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bad port number format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 314
    invoke-static {v6, v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private querySystem(Ljava/lang/String;ZLjava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "checkCurrent"    # Z
    .param p3, "apnName"    # Ljava/lang/String;

    .prologue
    .line 335
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v10, "selectionBuilder":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 337
    .local v5, "selectionArgs":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 338
    const-string/jumbo v0, "current"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " IS NOT NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 341
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 342
    const-string/jumbo v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_1
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :cond_2
    invoke-static {p3}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->trimWithNullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 347
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 348
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 349
    const-string/jumbo v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_3
    const-string/jumbo v0, "apn"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .end local v5    # "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p3, v5, v0

    .line 355
    :cond_4
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_5

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " sql query commands: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 357
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 357
    const-string/jumbo v1, " "

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 362
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 363
    sget-object v3, Lcom/sonymobile/conversations/transaction/TransactionSettings;->APN_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 361
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 364
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_9

    .line 365
    :cond_6
    if-eqz v7, :cond_7

    .line 366
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 368
    :cond_7
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_8

    .line 369
    const-string/jumbo v0, "Query returned empty"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :cond_8
    const/4 v0, 0x0

    return-object v0

    .line 373
    :cond_9
    return-object v7

    .line 376
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 377
    .local v9, "se":Ljava/lang/SecurityException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Platform denied APN table query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 378
    throw v9

    .line 374
    .end local v9    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v8

    .line 375
    .local v8, "ex":Landroid/database/sqlite/SQLiteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "APN table query exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 380
    const/4 v0, 0x0

    return-object v0
.end method

.method private static trimWithNullCheck(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 384
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public declared-synchronized getApns()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 174
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings;->mMmsApns:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isMmscSet()Z
    .locals 3

    .prologue
    .line 163
    iget-object v2, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings;->mMmsApns:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "apn$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;

    .line 164
    .local v0, "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    invoke-virtual {v0}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->isMmscSet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    const/4 v2, 0x1

    return v2

    .line 168
    .end local v0    # "apn":Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public declared-synchronized moveApnToTop(Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)V
    .locals 3
    .param p1, "apn"    # Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;

    .prologue
    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings;->mMmsApns:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 184
    .local v0, "index":I
    if-gtz v0, :cond_0

    monitor-exit p0

    .line 185
    return-void

    .line 187
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/TransactionSettings;->mMmsApns:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 182
    return-void

    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
