.class public Lcom/sonymobile/conversations/transaction/TransactionState;
.super Ljava/lang/Object;
.source "TransactionState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/conversations/transaction/TransactionState$State;
    }
.end annotation


# instance fields
.field private mContentUri:Landroid/net/Uri;

.field private mState:Lcom/sonymobile/conversations/transaction/TransactionState$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lcom/sonymobile/conversations/transaction/TransactionState$State;->INITIALIZED:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    iput-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionState;->mState:Lcom/sonymobile/conversations/transaction/TransactionState$State;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionState;->mContentUri:Landroid/net/Uri;

    .line 55
    return-void
.end method


# virtual methods
.method public declared-synchronized getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionState;->mContentUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()Lcom/sonymobile/conversations/transaction/TransactionState$State;
    .locals 1

    .prologue
    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/TransactionState;->mState:Lcom/sonymobile/conversations/transaction/TransactionState$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setContentUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    monitor-enter p0

    .line 95
    :try_start_0
    iput-object p1, p0, Lcom/sonymobile/conversations/transaction/TransactionState;->mContentUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 94
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setState(Lcom/sonymobile/conversations/transaction/TransactionState$State;)V
    .locals 1
    .param p1, "state"    # Lcom/sonymobile/conversations/transaction/TransactionState$State;

    .prologue
    monitor-enter p0

    .line 77
    :try_start_0
    iput-object p1, p0, Lcom/sonymobile/conversations/transaction/TransactionState;->mState:Lcom/sonymobile/conversations/transaction/TransactionState$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 76
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
