.class public Lcom/sonyericsson/conversations/ui/util/StarMessageAsyncTask;
.super Landroid/os/AsyncTask;
.source "StarMessageAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sonyericsson/conversations/model/Message;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/StarMessageAsyncTask;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/util/StarMessageAsyncTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 47
    return-void
.end method

.method private getNewStatus(Lcom/sonyericsson/conversations/model/Message;)I
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 81
    const/4 v0, 0x1

    .line 82
    .local v0, "newStatus":I
    iget v1, p1, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :cond_0
    return v0
.end method

.method private setImStarStatus(Lcom/sonyericsson/conversations/model/JoynMessage;I)V
    .locals 4
    .param p1, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p2, "status"    # I

    .prologue
    .line 75
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getStarStatusManager()Lcom/sonyericsson/conversations/starstatus/StarStatusApi;

    move-result-object v1

    .line 76
    .local v1, "starStatusApi":Lcom/sonyericsson/conversations/starstatus/StarStatusApi;
    invoke-static {p2}, Lcom/sonyericsson/conversations/starstatus/StarStatusUtil;->xmsStarStatus2ImStarStatus(I)Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    move-result-object v0

    .line 77
    .local v0, "starStatus":Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/StarMessageAsyncTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi;->setStarStatus(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;)J

    .line 74
    return-void
.end method

.method private setXmsStarStatus(Lcom/sonyericsson/conversations/model/Message;I)V
    .locals 6
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "status"    # I

    .prologue
    const/4 v4, 0x0

    .line 68
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "star_status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/StarMessageAsyncTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/StarMessageAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 67
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sonyericsson/conversations/model/Message;)Ljava/lang/Integer;
    .locals 3
    .param p1, "messages"    # [Lcom/sonyericsson/conversations/model/Message;

    .prologue
    const/4 v2, 0x0

    .line 54
    const/4 v0, -0x1

    .line 55
    .local v0, "newStatus":I
    if-eqz p1, :cond_0

    aget-object v1, p1, v2

    if-eqz v1, :cond_0

    .line 56
    aget-object v1, p1, v2

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/util/StarMessageAsyncTask;->getNewStatus(Lcom/sonyericsson/conversations/model/Message;)I

    move-result v0

    .line 57
    aget-object v1, p1, v2

    instance-of v1, v1, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v1, :cond_1

    .line 58
    aget-object v1, p1, v2

    check-cast v1, Lcom/sonyericsson/conversations/model/JoynMessage;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/conversations/ui/util/StarMessageAsyncTask;->setImStarStatus(Lcom/sonyericsson/conversations/model/JoynMessage;I)V

    .line 62
    :goto_0
    aget-object v1, p1, v2

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/model/Message;->setStarStatus(I)V

    .line 64
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 60
    :cond_1
    aget-object v1, p1, v2

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/conversations/ui/util/StarMessageAsyncTask;->setXmsStarStatus(Lcom/sonyericsson/conversations/model/Message;I)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, [Lcom/sonyericsson/conversations/model/Message;

    .end local p1    # "messages":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/util/StarMessageAsyncTask;->doInBackground([Lcom/sonyericsson/conversations/model/Message;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 92
    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 95
    const v0, 0x7f0b0237

    .line 97
    .local v0, "toastResId":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/StarMessageAsyncTask;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 89
    return-void

    .line 96
    .end local v0    # "toastResId":I
    :cond_1
    const v0, 0x7f0b0238

    .restart local v0    # "toastResId":I
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 89
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/util/StarMessageAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
