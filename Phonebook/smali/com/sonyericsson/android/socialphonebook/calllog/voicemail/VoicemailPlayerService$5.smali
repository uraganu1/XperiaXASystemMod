.class Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$5;
.super Landroid/telephony/PhoneStateListener;
.source "VoicemailPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->onCreate()V
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
    .line 62
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$5;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 65
    packed-switch p1, :pswitch_data_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$5;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->-get1(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$5;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->pausePlayback()V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
