.class Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener$1;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;

.field final synthetic val$mp:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;
    .param p2, "val$mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 891
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener$1;->this$1:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener$1;->val$mp:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener$1;->this$1:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener$1;->val$mp:Landroid/media/MediaPlayer;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->-wrap3(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Landroid/media/MediaPlayer;)V

    .line 893
    return-void
.end method
