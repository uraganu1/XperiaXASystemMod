.class Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader$1;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;->onPostExecute(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;

.field final synthetic val$voicemailState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;
    .param p2, "val$voicemailState"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader$1;->this$1:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader$1;->val$voicemailState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader$1;->val$voicemailState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;->overallState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->getActionUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader$1;->this$1:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    .line 1187
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment$VoiceMailStatusLoader$1;->val$voicemailState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;

    iget-object v3, v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$VoicemailState;->overallState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->getActionUri()Landroid/net/Uri;

    move-result-object v3

    .line 1186
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    .line 1184
    :cond_0
    return-void
.end method
