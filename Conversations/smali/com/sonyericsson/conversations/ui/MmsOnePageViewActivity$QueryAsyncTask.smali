.class Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;
.super Landroid/os/AsyncTask;
.source "MmsOnePageViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Lcom/sonyericsson/conversations/model/MmsMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    .line 142
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 143
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;->mContext:Landroid/content/Context;

    .line 141
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/MmsMessage;
    .locals 2
    .param p1, "params"    # [Landroid/net/Uri;

    .prologue
    .line 154
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;->mUri:Landroid/net/Uri;

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/MmsMessage;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 153
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;->doInBackground([Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/MmsMessage;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sonyericsson/conversations/model/MmsMessage;)V
    .locals 3
    .param p1, "result"    # Lcom/sonyericsson/conversations/model/MmsMessage;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 166
    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->-get0(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 159
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->finish()V

    .line 170
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 159
    check-cast p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;->onPostExecute(Lcom/sonyericsson/conversations/model/MmsMessage;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 149
    const-wide/16 v2, 0x1f4

    .line 148
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 147
    return-void
.end method
