.class public Lcom/android/systemui/qs/tiles/SoundTile;
.super Lcom/android/systemui/qs/QSTile;
.source "SoundTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$State;",
        ">;"
    }
.end annotation

# instance fields
.field private final mToRing:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

# instance fields
.field private final mToVibrate:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

# instance fields
.field private final mToSilent:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

# static fields
.field private static final SOUND_SETTINGS:Landroid/content/Intent;

.field private final mAnimationEnabled:Z

# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mListening:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/SoundTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundTile;->refreshState()V

    return-void
.end method

# direct methods
.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/SoundTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SoundTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/SoundTile;->SOUND_SETTINGS:Landroid/content/Intent;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0202ae

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mToRing:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0202af

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mToVibrate:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0202b0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mToSilent:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mListening:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mAnimationEnabled:Z

    .line 43
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mAudioManager:Landroid/media/AudioManager;

    .line 44
    new-instance v0, Lcom/android/systemui/qs/tiles/SoundTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundTile$1;-><init>(Lcom/android/systemui/qs/tiles/SoundTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    return-void
.end method

.method private updateState()V
    .locals 4

    .prologue
    .line 81
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    .line 82
    .local v1, "oldState":I
    move v0, v1

    .line 83
    .local v0, "newState":I
    packed-switch v1, :pswitch_data_0

    .line 99
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundTile;->getMetricsCategory()I

    move-result v3

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 80
    return-void

    .line 85
    :pswitch_0
    const/4 v0, 0x1

    .line 86
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_0

    .line 89
    :pswitch_1
    const/4 v0, 0x0

    .line 90
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_0

    .line 93
    :pswitch_2
    const/4 v0, 0x2

    .line 94
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 125
    const/16 v0, 0x48

    return v0
.end method

.method public handleClick()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundTile;->updateState()V

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mToRing:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mToVibrate:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mToSilent:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundTile;->refreshState()V

    return-void
.end method

.method protected handleLongClick()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    sget-object v1, Lcom/android/systemui/qs/tiles/SoundTile;->SOUND_SETTINGS:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    const v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mAnimationEnabled:Z

    return-void

    .line 107
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mContext:Landroid/content/Context;

    const v2, 0x7f090380

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mToRing:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mContext:Landroid/content/Context;

    const v2, 0x7f090381

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mToVibrate:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_0

    .line 115
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mContext:Landroid/content/Context;

    const v2, 0x7f090382

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mToSilent:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/android/systemui/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$State;-><init>()V

    return-object v0
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 59
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mListening:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 60
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mListening:Z

    .line 61
    if-eqz p1, :cond_1

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
