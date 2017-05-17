.class Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaybackPositionListener"
.end annotation


# instance fields
.field private mShouldResumePlaybackAfterSeeking:Z

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    .prologue
    .line 900
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 926
    if-eqz p3, :cond_0

    .line 928
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->-wrap13(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;II)V

    .line 925
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 905
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->-get7(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->mShouldResumePlaybackAfterSeeking:Z

    .line 907
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->-get7(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->-get4(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->-wrap18(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;II)V

    .line 904
    :goto_0
    return-void

    .line 909
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->mShouldResumePlaybackAfterSeeking:Z

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 917
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->-set0(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;I)I

    .line 918
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->mShouldResumePlaybackAfterSeeking:Z

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->-wrap11(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)V

    .line 914
    :cond_0
    return-void
.end method
