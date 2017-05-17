.class Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$1;
.super Landroid/os/AsyncTask;
.source "VoicemailFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->requestVoicemail(Landroid/net/Uri;)V
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
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

.field final synthetic val$voicemailUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;
    .param p2, "val$voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$1;->val$voicemailUri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 109
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "checkForContent doInBackground"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$1;->val$voicemailUri:Landroid/net/Uri;

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
    .line 108
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "hasContent"    # Ljava/lang/Boolean;

    .prologue
    .line 115
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPostExecute hasContent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$OnVoicemailFetchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->-get3(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$OnVoicemailFetchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$1;->val$voicemailUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$OnVoicemailFetchListener;->onSuccess(Landroid/net/Uri;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$1;->val$voicemailUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;->-wrap1(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "hasContent"    # Ljava/lang/Object;

    .prologue
    .line 114
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "hasContent":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
