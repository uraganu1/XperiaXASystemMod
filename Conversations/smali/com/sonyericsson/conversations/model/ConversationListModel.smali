.class public Lcom/sonyericsson/conversations/model/ConversationListModel;
.super Lcom/sonyericsson/conversations/model/LoaderModel;
.source "ConversationListModel.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/sonyericsson/conversations/conversation/ConversationItemApi$ContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;,
        Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;,
        Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;,
        Lcom/sonyericsson/conversations/model/ConversationListModel$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/conversations/model/LoaderModel;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/sonyericsson/conversations/conversation/ConversationItemApi$ContentChangedListener;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mConversationsApp:Lcom/sonyericsson/conversations/ConversationsApp;

.field private final mDeleteConversationsListener:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsListener;

.field private mDeleteTask:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;

.field protected mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

.field private mLoaderType:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

.field private mQueryHandler:Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/model/ConversationListModel;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/LoaderModel;-><init>()V

    .line 99
    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    .line 101
    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mContext:Landroid/content/Context;

    .line 103
    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mActivity:Landroid/app/Activity;

    .line 105
    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mConversationsApp:Lcom/sonyericsson/conversations/ConversationsApp;

    .line 108
    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mQueryHandler:Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;

    .line 472
    new-instance v0, Lcom/sonyericsson/conversations/model/ConversationListModel$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/model/ConversationListModel$1;-><init>(Lcom/sonyericsson/conversations/model/ConversationListModel;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteConversationsListener:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsListener;

    .line 59
    return-void
.end method


# virtual methods
.method public asyncDeleteObsoleteThreads()V
    .locals 7

    .prologue
    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mQueryHandler:Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;

    .line 622
    sget-object v3, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    .line 621
    const/16 v1, 0x3ea

    const/4 v2, 0x0

    .line 622
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 621
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :goto_0
    return-void

    .line 623
    :catch_0
    move-exception v6

    .line 624
    .local v6, "e":Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method public changeToNormalMode()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    sget-object v1, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;->NORMAL_MODE:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->setLoaderMode(Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;)V

    .line 606
    :cond_0
    return-void
.end method

.method public changeToSearchMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 613
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    sget-object v1, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;->SEARCH_MODE:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->setLoaderMode(Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;)V

    .line 615
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->setLoaderSearchString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteThreads(ILandroid/util/SparseBooleanArray;[Lcom/sonyericsson/conversations/conversation/ConversationId;Z[Z)V
    .locals 8
    .param p1, "totalCount"    # I
    .param p2, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p3, "conversationIds"    # [Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p4, "deleteStarred"    # Z
    .param p5, "itemsStarred"    # [Z

    .prologue
    const/4 v7, 0x0

    .line 443
    if-nez p2, :cond_0

    .line 444
    return-void

    .line 446
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v1, "conversationIdsTobeDeleted":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationId;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v3, "nonStarredMsgTobeDeleted":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationId;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, p1, :cond_3

    .line 449
    invoke-virtual {p2, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 448
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    :cond_1
    aget-object v0, p3, v2

    .line 453
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    if-nez p4, :cond_2

    aget-boolean v4, p5, v2

    if-eqz v4, :cond_2

    .line 454
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 456
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 459
    .end local v0    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 460
    return-void

    .line 463
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 467
    :cond_5
    :goto_2
    new-instance v4, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;

    iget-object v5, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 468
    iget-object v6, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteConversationsListener:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsListener;

    .line 467
    invoke-direct {v4, v5, v1, v3, v6}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsListener;)V

    iput-object v4, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;

    .line 469
    iget-object v4, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v6, v7, [Ljava/lang/Void;

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 442
    return-void

    .line 464
    :cond_6
    iget-object v4, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;

    invoke-virtual {v4, v7}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->cancel(Z)Z

    goto :goto_2
.end method

.method public forceLoad()V
    .locals 2

    .prologue
    .line 564
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 565
    return-void

    .line 567
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/model/ConversationListModel$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/model/ConversationListModel$2;-><init>(Lcom/sonyericsson/conversations/model/ConversationListModel;)V

    .line 575
    .local v0, "action":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 563
    return-void
.end method

.method public initModel(Lcom/sonyericsson/conversations/ConversationsApp;Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;Landroid/app/Activity;)V
    .locals 4
    .param p1, "app"    # Lcom/sonyericsson/conversations/ConversationsApp;
    .param p2, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;
    .param p3, "loaderType"    # Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 525
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ConversationsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mContext:Landroid/content/Context;

    .line 526
    iput-object p4, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mActivity:Landroid/app/Activity;

    .line 527
    new-instance v1, Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;

    iget-object v2, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;-><init>(Lcom/sonyericsson/conversations/model/ConversationListModel;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mQueryHandler:Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;

    .line 528
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mConversationsApp:Lcom/sonyericsson/conversations/ConversationsApp;

    .line 529
    iput-object p3, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoaderType:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    .line 530
    if-eqz p2, :cond_0

    .line 531
    invoke-virtual {p0, p2}, Lcom/sonyericsson/conversations/model/ConversationListModel;->addListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 533
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, v3, p0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->createCursorLoaderForListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)V

    .line 534
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getConversationItemManager()Lcom/sonyericsson/conversations/conversation/ConversationItemApi;

    move-result-object v0

    .line 535
    .local v0, "api":Lcom/sonyericsson/conversations/conversation/ConversationItemApi;
    invoke-interface {v0, p0}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->addContentChangedListener(Lcom/sonyericsson/conversations/conversation/ConversationItemApi$ContentChangedListener;)V

    .line 536
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->forceLoad()V

    .line 524
    return-void
.end method

.method public isDeleteTaskFinished()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 504
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDeleteTaskNotTriggered()Z
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeleteTaskRunning()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 500
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onConversationItemChanged()V
    .locals 0

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->forceLoad()V

    .line 113
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    new-instance v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mConversationsApp:Lcom/sonyericsson/conversations/ConversationsApp;

    iget-object v2, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoaderType:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    .line 587
    sget-object v3, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;->NORMAL_MODE:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

    .line 586
    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;-><init>(Lcom/sonyericsson/conversations/ConversationsApp;Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    .line 588
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 592
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    instance-of v1, p1, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 594
    check-cast v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    .line 595
    .local v0, "conversationLoader":Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;->setUpdateThrottle(J)V

    .line 598
    .end local v0    # "conversationLoader":Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;
    :cond_0
    const-string/jumbo v1, "ConversationListModel_data_loaded"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/conversations/model/ConversationListModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->asyncDeleteObsoleteThreads()V

    .line 591
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 591
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/model/ConversationListModel;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 603
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-string/jumbo v0, "ConversationListModel_data_reset"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/model/ConversationListModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    return-void
.end method

.method public removeDeleteTask()V
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;

    .line 507
    return-void
.end method

.method public restartLoadData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 579
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoaderManager:Landroid/app/LoaderManager;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->forceLoad()V

    .line 578
    return-void
.end method

.method public uninitModel(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    const/4 v3, 0x0

    .line 545
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 549
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getConversationItemManager()Lcom/sonyericsson/conversations/conversation/ConversationItemApi;

    move-result-object v0

    .line 550
    .local v0, "api":Lcom/sonyericsson/conversations/conversation/ConversationItemApi;
    invoke-interface {v0, p0}, Lcom/sonyericsson/conversations/conversation/ConversationItemApi;->removeContentChangedListener(Lcom/sonyericsson/conversations/conversation/ConversationItemApi$ContentChangedListener;)V

    .line 552
    iput-object v3, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mContext:Landroid/content/Context;

    .line 553
    iput-object v3, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mActivity:Landroid/app/Activity;

    .line 554
    iput-object v3, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mQueryHandler:Lcom/sonyericsson/conversations/model/ConversationListModel$QueryHandler;

    .line 555
    iput-object v3, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoader:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;

    .line 556
    iput-object v3, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mLoaderManager:Landroid/app/LoaderManager;

    .line 557
    iput-object v3, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;

    .line 558
    if-eqz p1, :cond_1

    .line 559
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/model/ConversationListModel;->removeListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 544
    :cond_1
    return-void

    .line 546
    .end local v0    # "api":Lcom/sonyericsson/conversations/conversation/ConversationItemApi;
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel;->mDeleteTask:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->cancel(Z)Z

    goto :goto_0
.end method
