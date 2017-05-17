.class Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$2;
.super Ljava/lang/Object;
.source "VoicemailPlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->STOP:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->-wrap2(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;)V

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->-get2(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;->onVoicemailCompleted()V

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$2;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->-wrap0(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;)V

    .line 106
    return-void
.end method
