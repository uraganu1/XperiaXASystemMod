.class Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler$1;
.super Landroid/os/AsyncTask;
.source "VoicemailFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler$1;->this$1:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 223
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tasks.CHECK_CONTENT_AFTER_CHANGE doInBackground : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 224
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler$1;->this$1:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;)Landroid/net/Uri;

    move-result-object v2

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler$1;->this$1:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler$1;->this$1:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->-wrap0(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;Landroid/net/Uri;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 222
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "hasContent"    # Ljava/lang/Boolean;

    .prologue
    .line 230
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tasks.CHECK_CONTENT_AFTER_CHANGE onPostExecute : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler$1;->this$1:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->-get0(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler$1;->this$1:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler$1;->this$1:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->-wrap0(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;Landroid/database/ContentObserver;)V

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler$1;->this$1:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$OnVoicemailFetchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler$1;->this$1:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$OnVoicemailFetchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler$1;->this$1:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$OnVoicemailFetchListener;->onSuccess(Landroid/net/Uri;)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler$1;->this$1:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$OnVoicemailFetchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler$1;->this$1:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$OnVoicemailFetchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler$1;->this$1:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$OnVoicemailFetchListener;->onFailed(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "hasContent"    # Ljava/lang/Object;

    .prologue
    .line 229
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "hasContent":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$FetchResultHandler$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
