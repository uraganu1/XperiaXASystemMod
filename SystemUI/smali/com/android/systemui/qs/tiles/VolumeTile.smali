.class public Lcom/android/systemui/qs/tiles/VolumeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "VolumeTile.java"

# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation

# instance fields
.field private final mClick1:Lcom/android/systemui/qs/QSTile$AnimationIcon;
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
.field private final mClick2:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mClick:Z

# static fields
.field private static final SOUND_SETTINGS:Landroid/content/Intent;

# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/VolumeTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VolumeTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/VolumeTile;->SOUND_SETTINGS:Landroid/content/Intent;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0202a4

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VolumeTile;->mClick1:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v1, 0x7f0202a5

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VolumeTile;->mClick2:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/VolumeTile;->mClick:Z

    .line 32
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 56
    const v0, -0x7fffffd9

    return v0
.end method

.method protected handleClick()V
    .locals 3

    .prologue
    .line 38
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VolumeTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 39
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->adjustVolume(II)V

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VolumeTile;->mClick1:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VolumeTile;->mClick2:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/VolumeTile;->mClick:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/VolumeTile;->mClick:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VolumeTile;->refreshState()V

    .line 37
    return-void
.end method

.method protected handleLongClick()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VolumeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    sget-object v1, Lcom/android/systemui/qs/tiles/VolumeTile;->SOUND_SETTINGS:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->visible:Z

    .line 50
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VolumeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f09037d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VolumeTile;->mClick1:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/VolumeTile;->mClick:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VolumeTile;->mClick2:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    :cond_1
    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 48
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/VolumeTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VolumeTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 65
    return-void
.end method
