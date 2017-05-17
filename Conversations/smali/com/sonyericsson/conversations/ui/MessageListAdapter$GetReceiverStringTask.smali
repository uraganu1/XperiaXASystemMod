.class Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;
.super Landroid/os/AsyncTask;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetReceiverStringTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAsyncParticipant:Lcom/sonyericsson/conversations/model/Participant;

.field private mAsyncParticipantName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Lcom/sonyericsson/conversations/model/Participant;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageListAdapter;
    .param p2, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    const/4 v0, 0x0

    .line 300
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 296
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->mAsyncParticipant:Lcom/sonyericsson/conversations/model/Participant;

    .line 298
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->mAsyncParticipantName:Ljava/lang/String;

    .line 301
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->mAsyncParticipant:Lcom/sonyericsson/conversations/model/Participant;

    .line 300
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 310
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->mAsyncParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Participant;->getPersonName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->mAsyncParticipantName:Ljava/lang/String;

    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 316
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->mAsyncParticipantName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->mAsyncParticipantName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-set3(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 316
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-set3(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    return-void
.end method
