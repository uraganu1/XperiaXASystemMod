.class public Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;
.super Landroid/app/Fragment;
.source "VoicemailPlayerFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment$1;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

.field private mStatusListener:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mService:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mService:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 63
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mConnection:Landroid/content/ServiceConnection;

    .line 29
    return-void
.end method

.method private connectToService()V
    .locals 4

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 76
    return-void
.end method


# virtual methods
.method public getVoicemailMessageStatus()Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mService:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mService:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->getVoicemailMessageStatus()Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    return-object v1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x80000000

    .line 42
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v0

    .line 43
    .local v0, "currentAudioStream":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->getVoicemailMessageStatus()Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    move-result-object v2

    .line 44
    .local v2, "voicemailMessageStatus":Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;
    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->getPlayerStatus()Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    move-result-object v1

    .line 46
    .local v1, "currentStatus":Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->PLAY:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    if-ne v1, v3, :cond_1

    .line 47
    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 53
    .end local v1    # "currentStatus":Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 39
    return-void

    .line 49
    .restart local v1    # "currentStatus":Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;
    :cond_1
    if-eq v0, v4, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setVolumeControlStream(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->setRetainInstance(Z)V

    .line 59
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->connectToService()V

    .line 60
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mService:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mService:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->killService()V

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 126
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 121
    return-void
.end method

.method public onVoicemailCompleted()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mStatusListener:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mStatusListener:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;->onVoicemailCompleted()V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 150
    :cond_1
    return-void
.end method

.method public onVoicemailPaused()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mStatusListener:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mStatusListener:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;->onVoicemailPaused()V

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 140
    :cond_1
    return-void
.end method

.method public onVoicemailStarted()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mStatusListener:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mStatusListener:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;->onVoicemailStarted()V

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 130
    :cond_1
    return-void
.end method

.method public pauseVoicemailIfPlaying()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mService:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mService:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->pausePlayback()V

    .line 91
    :cond_0
    return-void
.end method

.method public playVoicemail(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;)V
    .locals 1
    .param p1, "voicemailStatus"    # Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mService:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->playPlayback(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;)V

    .line 87
    return-void
.end method

.method public setVoicemailStatusChangeListener(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mStatusListener:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;

    .line 116
    return-void
.end method

.method public stopVoicemailIfPlaying()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mService:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerFragment;->mService:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;->stopPlayback()V

    .line 97
    :cond_0
    return-void
.end method
