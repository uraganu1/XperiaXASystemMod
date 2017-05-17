.class Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment$1;
.super Ljava/lang/Object;
.source "VoicemailPlayerFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    move-object v0, p2

    .line 66
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$LocalBinder;

    .line 67
    .local v0, "binder":Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$LocalBinder;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$LocalBinder;->getService()Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->-set0(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    .line 68
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->setVoicemailStatusChangeListener(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;)V

    .line 65
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 72
    return-void
.end method
