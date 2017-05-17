.class Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartStopButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 943
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 946
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->-get7(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->-get7(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->-get4(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->-wrap17(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;IIZ)V

    .line 945
    :goto_0
    return-void

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->-wrap10(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)V

    goto :goto_0
.end method
