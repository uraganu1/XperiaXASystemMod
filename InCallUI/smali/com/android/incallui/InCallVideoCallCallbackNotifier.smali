.class public Lcom/android/incallui/InCallVideoCallCallbackNotifier;
.super Ljava/lang/Object;
.source "InCallVideoCallCallbackNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;,
        Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;,
        Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/incallui/InCallVideoCallCallbackNotifier;


# instance fields
.field private final mSessionModificationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    invoke-direct {v0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;-><init>()V

    .line 37
    sput-object v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->sInstance:Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const v1, 0x3f666666    # 0.9f

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 48
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 50
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    .line 63
    return-void
.end method

.method public static getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->sInstance:Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    return-object v0
.end method


# virtual methods
.method public addSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .prologue
    .line 72
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public addSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;

    .prologue
    .line 114
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public addVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    .prologue
    .line 93
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public callDataUsageChanged(J)V
    .locals 3
    .param p1, "dataUsage"    # J

    .prologue
    .line 242
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    .line 243
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;->onCallDataUsageChange(J)V

    goto :goto_0

    .line 241
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    :cond_0
    return-void
.end method

.method public callSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 180
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    .line 181
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;->onCallSessionEvent(I)V

    goto :goto_0

    .line 179
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    :cond_0
    return-void
.end method

.method public cameraDimensionsChanged(Lcom/android/incallui/Call;IIF)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "maxZoom"    # F

    .prologue
    .line 231
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;

    .line 232
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;->onCameraDimensionsChange(Lcom/android/incallui/Call;IIF)V

    goto :goto_0

    .line 230
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
    :cond_0
    return-void
.end method

.method public downgradeToAudio(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 169
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .line 170
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;->onDowngradeToAudio(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 168
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    :cond_0
    return-void
.end method

.method public peerDimensionsChanged(Lcom/android/incallui/Call;II)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 217
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;

    .line 218
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;->onUpdatePeerDimensions(Lcom/android/incallui/Call;II)V

    goto :goto_0

    .line 216
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
    :cond_0
    return-void
.end method

.method public removeSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    return-void
.end method

.method public removeSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    return-void
.end method

.method public removeVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    return-void
.end method

.method public upgradeToVideoFail(ILcom/android/incallui/Call;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 158
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .line 159
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;->onUpgradeToVideoFail(ILcom/android/incallui/Call;)V

    goto :goto_0

    .line 157
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    :cond_0
    return-void
.end method

.method public upgradeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoState"    # I

    .prologue
    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "upgradeToVideoRequest call = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " new video state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .line 137
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;->onUpgradeToVideoRequest(Lcom/android/incallui/Call;I)V

    goto :goto_0

    .line 134
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    :cond_0
    return-void
.end method

.method public upgradeToVideoSuccess(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 147
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .line 148
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;->onUpgradeToVideoSuccess(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 146
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    :cond_0
    return-void
.end method

.method public videoQualityChanged(Lcom/android/incallui/Call;I)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoQuality"    # I

    .prologue
    .line 204
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    .line 205
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;->onVideoQualityChanged(Lcom/android/incallui/Call;I)V

    goto :goto_0

    .line 203
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    :cond_0
    return-void
.end method
