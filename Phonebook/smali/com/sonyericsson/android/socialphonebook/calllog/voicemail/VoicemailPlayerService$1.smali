.class Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$1;
.super Ljava/lang/Object;
.source "VoicemailPlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 91
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->-wrap1(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;)V

    .line 94
    return-void
.end method
