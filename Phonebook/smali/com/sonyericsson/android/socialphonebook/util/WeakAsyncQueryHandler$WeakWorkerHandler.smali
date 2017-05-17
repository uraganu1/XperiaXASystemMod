.class public Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$WeakWorkerHandler;
.super Landroid/content/AsyncQueryHandler$WorkerHandler;
.source "WeakAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WeakWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;Landroid/os/Looper;)V
    .locals 0
    .param p2, "aLooper"    # Landroid/os/Looper;

    .prologue
    .line 93
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$WeakWorkerHandler;, "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler<TWeakTarget;>.WeakWorkerHandler;"
    .local p1, "this$0":Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;, "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler<TWeakTarget;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$WeakWorkerHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 93
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "aMsg"    # Landroid/os/Message;

    .prologue
    .line 103
    .local p0, "this":Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$WeakWorkerHandler;, "Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler<TWeakTarget;>.WeakWorkerHandler;"
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 104
    .local v10, "event":I
    const/4 v1, 0x1

    if-eq v10, v1, :cond_0

    .line 105
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V

    .line 106
    return-void

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$WeakWorkerHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 110
    .local v6, "activity":Landroid/app/Activity;, "TWeakTarget;"
    if-nez v6, :cond_1

    .line 111
    return-void

    .line 113
    :cond_1
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-nez v0, :cond_2

    .line 115
    return-void

    .line 117
    :cond_2
    const/4 v6, 0x0

    .line 118
    .local v6, "activity":Landroid/app/Activity;, "TWeakTarget;"
    iget v13, p1, Landroid/os/Message;->what:I

    .line 119
    .local v13, "token":I
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/content/AsyncQueryHandler$WorkerArgs;

    .line 121
    .local v7, "args":Landroid/content/AsyncQueryHandler$WorkerArgs;
    const/4 v8, 0x0

    .line 123
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 124
    iget-object v3, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v4, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 125
    iget-object v5, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 123
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 129
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    iput-object v8, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$WeakWorkerHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "activity":Landroid/app/Activity;, "TWeakTarget;"
    check-cast v6, Landroid/app/Activity;

    .line 132
    .local v6, "activity":Landroid/app/Activity;, "TWeakTarget;"
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 133
    :cond_3
    if-eqz v8, :cond_4

    .line 134
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_4
    return-void

    .line 126
    .local v6, "activity":Landroid/app/Activity;, "TWeakTarget;"
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 127
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WeakAsyncQueryHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "query error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 140
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Ljava/lang/Exception;
    .local v6, "activity":Landroid/app/Activity;, "TWeakTarget;"
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$WeakWorkerHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;

    iget-object v2, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    invoke-virtual {v1, v6, v13, v2, v8}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler;->onPostQuery(Landroid/app/Activity;ILjava/lang/Object;Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 145
    :goto_1
    if-eqz v12, :cond_6

    .line 146
    invoke-static {v12}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;->-get0(Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 147
    invoke-static {v12}, Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;->-get1(Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 152
    :cond_6
    iget-object v1, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 153
    .local v11, "reply":Landroid/os/Message;
    iput-object v7, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v11, Landroid/os/Message;->arg1:I

    .line 156
    sget-boolean v1, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v1, :cond_7

    .line 157
    const-string/jumbo v1, "WeakAsyncQueryHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WeakWorkerHandler.handleMsg: msg.arg1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 158
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 158
    const-string/jumbo v3, ", reply.what="

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 158
    iget v3, v11, Landroid/os/Message;->what:I

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_7
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 102
    return-void

    .line 141
    .end local v11    # "reply":Landroid/os/Message;
    :catch_1
    move-exception v9

    .line 142
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WeakAsyncQueryHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPostQuery error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    const/4 v12, 0x0

    .local v12, "result":Lcom/sonyericsson/android/socialphonebook/util/WeakAsyncQueryHandler$QueryResult;
    goto :goto_1
.end method
