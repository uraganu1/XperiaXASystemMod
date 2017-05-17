.class public Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MmsNetworkHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/conversations/transaction/MmsNetworkHandler$1;
    }
.end annotation


# static fields
.field private static synthetic -android_net_NetworkInfo$StateSwitchesValues:[I

.field private static synthetic -com_sonymobile_conversations_transaction_TransactionState$StateSwitchesValues:[I


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentNetwork:Landroid/net/Network;

.field private mDefaultTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

.field private final mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mHandler:Landroid/os/Handler;

.field private final mMmsNetworkRequest:Landroid/net/NetworkRequest;

.field private final mPending:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/sonymobile/conversations/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessing:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/sonymobile/conversations/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceHandler:Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;

.field private mSubscriptionId:I

.field private final mWatchDog:Ljava/lang/Runnable;


# direct methods
.method private static synthetic -getandroid_net_NetworkInfo$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->-android_net_NetworkInfo$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->-android_net_NetworkInfo$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/net/NetworkInfo$State;->values()[Landroid/net/NetworkInfo$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->-android_net_NetworkInfo$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_sonymobile_conversations_transaction_TransactionState$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->-com_sonymobile_conversations_transaction_TransactionState$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->-com_sonymobile_conversations_transaction_TransactionState$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/conversations/transaction/TransactionState$State;->values()[Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual {v1}, Lcom/sonymobile/conversations/transaction/TransactionState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/conversations/transaction/TransactionState$State;->INITIALIZED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual {v1}, Lcom/sonymobile/conversations/transaction/TransactionState$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/conversations/transaction/TransactionState$State;->SUCCESS:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual {v1}, Lcom/sonymobile/conversations/transaction/TransactionState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->-com_sonymobile_conversations_transaction_TransactionState$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->markAllPendingTransactionsAsFailed()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "subscriptionId"    # I
    .param p3, "handler"    # Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mProcessing:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 43
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mPending:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mSubscriptionId:I

    .line 51
    new-instance v0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler$1;-><init>(Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;)V

    iput-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mWatchDog:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mHandler:Landroid/os/Handler;

    .line 73
    iput-object p1, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mContext:Landroid/content/Context;

    .line 74
    iput p2, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mSubscriptionId:I

    .line 75
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 78
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mMmsNetworkRequest:Landroid/net/NetworkRequest;

    .line 80
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mContext:Landroid/content/Context;

    .line 81
    const-string/jumbo v1, "connectivity"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 82
    iput-object p3, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mServiceHandler:Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;

    .line 83
    iput-object p4, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 84
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MmsNetworkHandler created for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method

.method private getApnName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->getNetwork()Landroid/net/Network;

    move-result-object v0

    .line 158
    .local v0, "network":Landroid/net/Network;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_1

    .line 159
    :cond_0
    return-object v2

    .line 161
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 162
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method private isTransactionAlreadyHandled(Lcom/sonymobile/conversations/transaction/Transaction;)Z
    .locals 7
    .param p1, "transaction"    # Lcom/sonymobile/conversations/transaction/Transaction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    .line 185
    iget-object v4, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mPending:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pendingTransaction$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/conversations/transaction/Transaction;

    .line 186
    .local v0, "pendingTransaction":Lcom/sonymobile/conversations/transaction/Transaction;
    invoke-virtual {v0, p1}, Lcom/sonymobile/conversations/transaction/Transaction;->isEquivalent(Lcom/sonymobile/conversations/transaction/Transaction;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 187
    sget-boolean v4, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v4, :cond_1

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Transaction already pending: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 189
    invoke-virtual {p1}, Lcom/sonymobile/conversations/transaction/Transaction;->getServiceId()I

    move-result v5

    .line 188
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 191
    :cond_1
    return v6

    .line 192
    :cond_2
    instance-of v4, v0, Lcom/sonymobile/conversations/transaction/NotificationTransaction;

    if-eqz v4, :cond_0

    .line 193
    instance-of v4, p1, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;

    .line 192
    if-eqz v4, :cond_0

    move-object v4, v0

    .line 194
    check-cast v4, Lcom/sonymobile/conversations/transaction/NotificationTransaction;

    move-object v5, p1

    .line 195
    check-cast v5, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;

    .line 194
    invoke-virtual {v4, v5}, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->isObsoletedBy(Lcom/sonymobile/conversations/transaction/RetrieveTransaction;)Z

    move-result v4

    .line 192
    if-eqz v4, :cond_0

    .line 202
    sget-boolean v4, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v4, :cond_3

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Found NT in pending: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 204
    invoke-virtual {p1}, Lcom/sonymobile/conversations/transaction/Transaction;->getServiceId()I

    move-result v5

    .line 203
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 208
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mPending:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 213
    .end local v0    # "pendingTransaction":Lcom/sonymobile/conversations/transaction/Transaction;
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mProcessing:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "t$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/conversations/transaction/Transaction;

    .line 214
    .local v2, "t":Lcom/sonymobile/conversations/transaction/Transaction;
    invoke-virtual {v2, p1}, Lcom/sonymobile/conversations/transaction/Transaction;->isEquivalent(Lcom/sonymobile/conversations/transaction/Transaction;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 215
    sget-boolean v4, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v4, :cond_6

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Duplicated transaction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonymobile/conversations/transaction/Transaction;->getServiceId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 218
    :cond_6
    return v6

    .line 219
    :cond_7
    instance-of v4, v2, Lcom/sonymobile/conversations/transaction/NotificationTransaction;

    if-eqz v4, :cond_5

    .line 220
    instance-of v4, p1, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;

    .line 219
    if-eqz v4, :cond_5

    .line 221
    check-cast v2, Lcom/sonymobile/conversations/transaction/NotificationTransaction;

    .end local v2    # "t":Lcom/sonymobile/conversations/transaction/Transaction;
    move-object v4, p1

    .line 222
    check-cast v4, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;

    .line 221
    invoke-virtual {v2, v4}, Lcom/sonymobile/conversations/transaction/NotificationTransaction;->isObsoletedBy(Lcom/sonymobile/conversations/transaction/RetrieveTransaction;)Z

    move-result v4

    .line 219
    if-eqz v4, :cond_5

    .line 223
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 224
    sget-boolean v4, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v4, :cond_8

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Found NT in processing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 226
    invoke-virtual {p1}, Lcom/sonymobile/conversations/transaction/Transaction;->getServiceId()I

    move-result v5

    .line 225
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 227
    const-string/jumbo v5, ", auto = ON, skip RT!"

    .line 225
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 229
    :cond_8
    return v6

    .line 233
    :cond_9
    const/4 v4, 0x0

    return v4
.end method

.method private markAllPendingTransactionsAsFailed()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 345
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mPending:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 347
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/conversations/transaction/Transaction;>;"
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/conversations/transaction/Transaction;

    .line 349
    .local v7, "transaction":Lcom/sonymobile/conversations/transaction/Transaction;
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 350
    invoke-virtual {v7}, Lcom/sonymobile/conversations/transaction/Transaction;->getState()Lcom/sonymobile/conversations/transaction/TransactionState;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/conversations/transaction/TransactionState$State;->FAILED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/transaction/TransactionState;->setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V

    .line 351
    instance-of v0, v7, Lcom/sonymobile/conversations/transaction/SendTransaction;

    if-eqz v0, :cond_1

    move-object v0, v7

    .line 352
    check-cast v0, Lcom/sonymobile/conversations/transaction/SendTransaction;

    invoke-virtual {v0}, Lcom/sonymobile/conversations/transaction/SendTransaction;->getSendReqURI()Landroid/net/Uri;

    move-result-object v2

    .line 353
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Lcom/sonymobile/conversations/transaction/Transaction;->getState()Lcom/sonymobile/conversations/transaction/TransactionState;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/conversations/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 354
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 355
    .local v3, "responseStatusValues":Landroid/content/ContentValues;
    const-string/jumbo v0, "resp_st"

    .line 356
    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 355
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 360
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "responseStatusValues":Landroid/content/ContentValues;
    :cond_1
    instance-of v0, v7, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;

    if-eqz v0, :cond_0

    .line 361
    check-cast v7, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;

    .end local v7    # "transaction":Lcom/sonymobile/conversations/transaction/Transaction;
    invoke-virtual {v7}, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 362
    .restart local v2    # "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    goto :goto_0

    .line 344
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    return-void
.end method

.method private notifyTransactionComplete(Lcom/sonymobile/conversations/transaction/Transaction;)V
    .locals 3
    .param p1, "transaction"    # Lcom/sonymobile/conversations/transaction/Transaction;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mServiceHandler:Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;

    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mServiceHandler:Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;

    .line 473
    const/4 v2, 0x5

    .line 472
    invoke-virtual {v1, v2, p1}, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/transaction/TransactionService$ServiceHandler;->dispatchMessage(Landroid/os/Message;)V

    .line 471
    return-void
.end method

.method private processPendingTransactions()V
    .locals 3

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->isNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 325
    return-void

    .line 327
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mPending:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 329
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/conversations/transaction/Transaction;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/conversations/transaction/Transaction;

    .line 331
    .local v1, "transaction":Lcom/sonymobile/conversations/transaction/Transaction;
    invoke-direct {p0, v1}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->processTransaction(Lcom/sonymobile/conversations/transaction/Transaction;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 323
    .end local v1    # "transaction":Lcom/sonymobile/conversations/transaction/Transaction;
    :cond_1
    return-void
.end method

.method private processTransaction(Lcom/sonymobile/conversations/transaction/Transaction;)Z
    .locals 2
    .param p1, "transaction"    # Lcom/sonymobile/conversations/transaction/Transaction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 302
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Adding transaction to \'mProcessing\' list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 305
    :cond_0
    invoke-virtual {p1, p0}, Lcom/sonymobile/conversations/transaction/Transaction;->setNetworkHandler(Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;)V

    .line 306
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mProcessing:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 307
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Executing transaction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 311
    const/4 v0, 0x1

    return v0

    .line 313
    :cond_2
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_3

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mProcessing reaches max, adding transaction to \'mPending\' list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 317
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private requestNetwork()V
    .locals 4

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    monitor-enter p0

    .line 108
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mDefaultTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 110
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mWatchDog:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mMmsNetworkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 105
    :cond_0
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private scheduleRetry(Lcom/sonymobile/conversations/transaction/Transaction;)V
    .locals 6
    .param p1, "transaction"    # Lcom/sonymobile/conversations/transaction/Transaction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 482
    sget-boolean v4, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v4, :cond_0

    .line 483
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Scheduling retry for transaction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/sonymobile/conversations/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 485
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/conversations/transaction/Transaction;->getState()Lcom/sonymobile/conversations/transaction/TransactionState;

    move-result-object v2

    .line 486
    .local v2, "state":Lcom/sonymobile/conversations/transaction/TransactionState;
    invoke-virtual {v2}, Lcom/sonymobile/conversations/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 487
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_2

    .line 489
    const/4 v1, 0x0

    .line 490
    .local v1, "isManualRequest":Z
    :try_start_0
    instance-of v4, p1, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;

    if-eqz v4, :cond_1

    .line 491
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sonymobile/conversations/transaction/RetrieveTransaction;->isManualRequest()Z

    move-result v1

    .line 494
    .end local v1    # "isManualRequest":Z
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sonymobile/conversations/transaction/Transaction;->isPermanentError()Z

    move-result v5

    .line 493
    invoke-static {v4, v3, v1, v5}, Lcom/sonymobile/conversations/transaction/TransactionInvokeProviderWrapper;->scheduleRetry(Landroid/content/Context;Landroid/net/Uri;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    iget-object v4, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonymobile/conversations/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 481
    :cond_2
    return-void

    .line 495
    :catchall_0
    move-exception v4

    .line 496
    iget-object v5, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sonymobile/conversations/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 495
    throw v4
.end method

.method private setNetwork(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mCurrentNetwork:Landroid/net/Network;

    .line 98
    return-void
.end method

.method private showFailureToast(I)V
    .locals 3
    .param p1, "transactionType"    # I

    .prologue
    const/4 v2, 0x1

    .line 451
    packed-switch p1, :pswitch_data_0

    .line 450
    :goto_0
    return-void

    .line 454
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00be

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 458
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00e4

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 451
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized getDefaultTransactionSettings()Lcom/sonymobile/conversations/transaction/TransactionSettings;
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    monitor-enter p0

    .line 548
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mDefaultTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    if-eqz v1, :cond_0

    .line 549
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mDefaultTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 551
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->getApnName()Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "apnName":Ljava/lang/String;
    new-instance v1, Lcom/sonymobile/conversations/transaction/TransactionSettings;

    iget-object v2, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mContext:Landroid/content/Context;

    .line 553
    iget v3, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mSubscriptionId:I

    .line 552
    invoke-direct {v1, v2, v3, v0}, Lcom/sonymobile/conversations/transaction/TransactionSettings;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mDefaultTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    .line 554
    sget-boolean v1, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v1, :cond_1

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Subscription Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mSubscriptionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Default APN Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 556
    const-string/jumbo v2, " APN Size: "

    .line 555
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 556
    iget-object v2, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mDefaultTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    invoke-virtual {v2}, Lcom/sonymobile/conversations/transaction/TransactionSettings;->getApns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 555
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 558
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mDefaultTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .end local v0    # "apnName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mCurrentNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public getNetworkStatus()Landroid/net/NetworkInfo$State;
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->getNetwork()Landroid/net/Network;

    move-result-object v0

    .line 142
    .local v0, "network":Landroid/net/Network;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_1

    .line 143
    :cond_0
    sget-object v2, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    return-object v2

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 146
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_2
    sget-object v2, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    goto :goto_0
.end method

.method getNumberOfPending()I
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mPending:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    return v0
.end method

.method getNumberOfProcessing()I
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mProcessing:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    return v0
.end method

.method public handleTransaction(Lcom/sonymobile/conversations/transaction/Transaction;)V
    .locals 3
    .param p1, "transaction"    # Lcom/sonymobile/conversations/transaction/Transaction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->isTransactionAlreadyHandled(Lcom/sonymobile/conversations/transaction/Transaction;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    return-void

    .line 248
    :cond_0
    invoke-static {}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->-getandroid_net_NetworkInfo$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->getNetworkStatus()Landroid/net/NetworkInfo$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 282
    const-string/jumbo v0, "Network is not in a valid state"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mPending:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 284
    return-void

    .line 253
    :pswitch_0
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Network not initialized.\nAdding transaction to \'mPending\' list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->requestNetwork()V

    .line 258
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mPending:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 259
    return-void

    .line 261
    :pswitch_1
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_2

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Network is connecting.\nAdding transaction to \'mPending\' list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mPending:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 266
    return-void

    .line 269
    :pswitch_2
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_3

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Network is suspended.\nIgnore transaction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mContext:Landroid/content/Context;

    const-class v1, Lcom/sonymobile/conversations/transaction/MmsConnectivityReceiver;

    .line 273
    const/4 v2, 0x1

    .line 272
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/util/ComponentEnabler;->setComponentEnabledState(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 274
    return-void

    .line 277
    :pswitch_3
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_4

    .line 278
    const-string/jumbo v0, "Network is connected."

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 287
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->processTransaction(Lcom/sonymobile/conversations/transaction/Transaction;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 288
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mPending:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_5
    return-void

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mPending:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mProcessing:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkAvailable()Z
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->-getandroid_net_NetworkInfo$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->getNetworkStatus()Landroid/net/NetworkInfo$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 174
    const/4 v0, 0x0

    return v0

    .line 172
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 523
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 524
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Network for subscription "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mSubscriptionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Connected :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 526
    invoke-virtual {p0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->isNetworkAvailable()Z

    move-result v1

    .line 525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mWatchDog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 529
    invoke-direct {p0, p1}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->setNetwork(Landroid/net/Network;)V

    .line 530
    invoke-virtual {p0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mPending:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 532
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mContext:Landroid/content/Context;

    const-class v1, Lcom/sonymobile/conversations/transaction/MmsConnectivityReceiver;

    .line 533
    const/4 v2, 0x1

    .line 532
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/util/ComponentEnabler;->setComponentEnabledState(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 522
    :goto_0
    return-void

    .line 535
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->processPendingTransactions()V

    goto :goto_0
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 541
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Network for subscription "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mSubscriptionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " lost connection."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 543
    invoke-direct {p0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->markAllPendingTransactionsAsFailed()V

    .line 540
    return-void
.end method

.method public stopUsingNetwork()V
    .locals 2

    .prologue
    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->setNetwork(Landroid/net/Network;)V

    .line 118
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "Unregister network callback exception"

    invoke-static {v1, v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public transactionChangedState(Lcom/sonymobile/conversations/transaction/Transaction;)V
    .locals 6
    .param p1, "transaction"    # Lcom/sonymobile/conversations/transaction/Transaction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 383
    invoke-virtual {p1}, Lcom/sonymobile/conversations/transaction/Transaction;->getState()Lcom/sonymobile/conversations/transaction/TransactionState;

    move-result-object v2

    .line 384
    .local v2, "transactionState":Lcom/sonymobile/conversations/transaction/TransactionState;
    invoke-virtual {v2}, Lcom/sonymobile/conversations/transaction/TransactionState;->getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;

    move-result-object v1

    .line 385
    .local v1, "state":Lcom/sonymobile/conversations/transaction/TransactionState$State;
    invoke-virtual {p1}, Lcom/sonymobile/conversations/transaction/Transaction;->getServiceId()I

    move-result v0

    .line 386
    .local v0, "serviceId":I
    sget-boolean v3, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Update transaction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 391
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mProcessing:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 395
    sget-boolean v3, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v3, :cond_1

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Aborted transaction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 397
    const-string/jumbo v4, " posted result: "

    .line 396
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 397
    invoke-virtual {v1}, Lcom/sonymobile/conversations/transaction/TransactionState$State;->name()Ljava/lang/String;

    move-result-object v4

    .line 396
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 399
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 400
    sget-boolean v3, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v3, :cond_2

    .line 402
    const-string/jumbo v3, "Stopping network usage as there isn\'t any transaction left to process"

    .line 401
    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 405
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->stopUsingNetwork()V

    .line 407
    :cond_3
    return-void

    .line 411
    :cond_4
    invoke-static {}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->-getcom_sonymobile_conversations_transaction_TransactionState$StateSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/conversations/transaction/TransactionState$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 435
    sget-boolean v3, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v3, :cond_5

    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transaction is in a bad state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 437
    const-string/jumbo v4, " "

    .line 436
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 437
    invoke-virtual {v1}, Lcom/sonymobile/conversations/transaction/TransactionState$State;->name()Ljava/lang/String;

    move-result-object v4

    .line 436
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 439
    :cond_5
    invoke-direct {p0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->processPendingTransactions()V

    .line 442
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->notifyTransactionComplete(Lcom/sonymobile/conversations/transaction/Transaction;)V

    .line 381
    return-void

    .line 413
    :pswitch_0
    sget-boolean v3, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v3, :cond_6

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transaction complete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 416
    :cond_6
    invoke-virtual {p0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 419
    iget-object v3, p0, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->mContext:Landroid/content/Context;

    .line 420
    const-class v4, Lcom/sonymobile/conversations/transaction/MmsBootRetryReceiver;

    const/4 v5, 0x0

    .line 419
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/conversations/util/ComponentEnabler;->setComponentEnabledState(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 421
    invoke-virtual {p0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->stopUsingNetwork()V

    goto :goto_0

    .line 423
    :cond_7
    invoke-direct {p0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->processPendingTransactions()V

    goto :goto_0

    .line 427
    :pswitch_1
    sget-boolean v3, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v3, :cond_8

    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transaction failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 430
    :cond_8
    invoke-virtual {p1}, Lcom/sonymobile/conversations/transaction/Transaction;->getType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->showFailureToast(I)V

    .line 431
    invoke-direct {p0, p1}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->scheduleRetry(Lcom/sonymobile/conversations/transaction/Transaction;)V

    .line 432
    invoke-virtual {p0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->stopUsingNetwork()V

    goto :goto_0

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
