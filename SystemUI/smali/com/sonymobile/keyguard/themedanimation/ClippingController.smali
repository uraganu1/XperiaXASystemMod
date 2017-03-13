.class public Lcom/sonymobile/keyguard/themedanimation/ClippingController;
.super Ljava/lang/Object;
.source "ClippingController.java"


# instance fields
.field private mClippingSources:Lcom/sonymobile/keyguard/themedanimation/ClippingSources;

.field private mClippingTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawingEnabled:Z

.field private mEnabled:Z

.field private mMasterScaleContainer:Landroid/view/View;

.field private mPanelContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingSources:Lcom/sonymobile/keyguard/themedanimation/ClippingSources;

    .line 31
    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mPanelContainer:Landroid/view/View;

    .line 36
    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mMasterScaleContainer:Landroid/view/View;

    .line 43
    iput-boolean v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mEnabled:Z

    .line 51
    iput-boolean v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mDrawingEnabled:Z

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingTargets:Ljava/util/List;

    .line 56
    return-void
.end method

.method private notifyClippingDrawingUpdated()V
    .locals 4

    .prologue
    .line 187
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 188
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 189
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingTargets:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;

    .line 190
    .local v2, "target":Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;
    iget-boolean v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mDrawingEnabled:Z

    invoke-interface {v2, v3}, Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;->updateDrawingEnabled(Z)V

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v2    # "target":Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;
    :cond_0
    return-void
.end method

.method private notifyClippingEnabledUpdated()V
    .locals 4

    .prologue
    .line 179
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 180
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 181
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingTargets:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;

    .line 182
    .local v2, "target":Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;
    iget-boolean v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mEnabled:Z

    invoke-interface {v2, v3}, Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;->updateEnabled(Z)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .end local v2    # "target":Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;
    :cond_0
    return-void
.end method

.method private notifyClippingSourcesUpdated()V
    .locals 4

    .prologue
    .line 155
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 156
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 157
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingTargets:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;

    .line 158
    .local v2, "target":Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingSources:Lcom/sonymobile/keyguard/themedanimation/ClippingSources;

    invoke-interface {v2, v3}, Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;->updateClippingSources(Lcom/sonymobile/keyguard/themedanimation/ClippingSources;)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    .end local v2    # "target":Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;
    :cond_0
    return-void
.end method

.method private notifyMasterScaleContainerUpdated()V
    .locals 4

    .prologue
    .line 171
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 172
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 173
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingTargets:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;

    .line 174
    .local v2, "target":Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mMasterScaleContainer:Landroid/view/View;

    invoke-interface {v2, v3}, Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;->updateMasterScaleContainer(Landroid/view/View;)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v2    # "target":Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;
    :cond_0
    return-void
.end method

.method private notifyPanelContainerUpdated()V
    .locals 4

    .prologue
    .line 163
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 164
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 165
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingTargets:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;

    .line 166
    .local v2, "target":Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mPanelContainer:Landroid/view/View;

    invoke-interface {v2, v3}, Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;->updatePanelContainer(Landroid/view/View;)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v2    # "target":Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;
    :cond_0
    return-void
.end method


# virtual methods
.method public addClippingTarget(Landroid/view/View;Z)V
    .locals 2
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "withDimmer"    # Z

    .prologue
    .line 67
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 68
    check-cast v0, Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;

    .line 69
    .local v0, "target":Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;
    iget-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingSources:Lcom/sonymobile/keyguard/themedanimation/ClippingSources;

    invoke-interface {v0, v1}, Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;->updateClippingSources(Lcom/sonymobile/keyguard/themedanimation/ClippingSources;)V

    .line 70
    iget-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mPanelContainer:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;->updatePanelContainer(Landroid/view/View;)V

    .line 71
    iget-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mMasterScaleContainer:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;->updateMasterScaleContainer(Landroid/view/View;)V

    .line 72
    invoke-interface {v0, p2}, Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;->updateDimmerDrawn(Z)V

    .line 73
    iget-boolean v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mEnabled:Z

    invoke-interface {v0, v1}, Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;->updateEnabled(Z)V

    .line 74
    iget-boolean v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mDrawingEnabled:Z

    invoke-interface {v0, v1}, Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;->updateDrawingEnabled(Z)V

    .line 75
    iget-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingTargets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .end local v0    # "target":Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;
    :cond_0
    return-void
.end method

.method public invalidateTargets()V
    .locals 5

    .prologue
    .line 144
    iget-object v4, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingTargets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 145
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 146
    iget-object v4, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingTargets:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;

    .line 147
    .local v2, "target":Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;
    invoke-interface {v2}, Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;->getView()Landroid/view/View;

    move-result-object v3

    .line 148
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 149
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 145
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "target":Lcom/sonymobile/keyguard/themedanimation/ClippingTarget;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setClippingEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mEnabled:Z

    .line 121
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingSources:Lcom/sonymobile/keyguard/themedanimation/ClippingSources;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingSources:Lcom/sonymobile/keyguard/themedanimation/ClippingSources;

    iget-boolean v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;->setClippingEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingSources:Lcom/sonymobile/keyguard/themedanimation/ClippingSources;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;->invalidate()V

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->notifyClippingEnabledUpdated()V

    .line 126
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->invalidateTargets()V

    .line 119
    return-void
.end method

.method public setClippingSources(Lcom/sonymobile/keyguard/themedanimation/ClippingSources;)V
    .locals 2
    .param p1, "sources"    # Lcom/sonymobile/keyguard/themedanimation/ClippingSources;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingSources:Lcom/sonymobile/keyguard/themedanimation/ClippingSources;

    .line 86
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingSources:Lcom/sonymobile/keyguard/themedanimation/ClippingSources;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingSources:Lcom/sonymobile/keyguard/themedanimation/ClippingSources;

    iget-boolean v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;->setClippingEnabled(Z)V

    .line 88
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mClippingSources:Lcom/sonymobile/keyguard/themedanimation/ClippingSources;

    invoke-virtual {v0}, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;->invalidate()V

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->notifyClippingSourcesUpdated()V

    .line 91
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->invalidateTargets()V

    .line 84
    return-void
.end method

.method public setDrawingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mDrawingEnabled:Z

    .line 136
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->notifyClippingDrawingUpdated()V

    .line 137
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->invalidateTargets()V

    .line 134
    return-void
.end method

.method public setMasterScaleContainer(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mMasterScaleContainer:Landroid/view/View;

    .line 111
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->notifyMasterScaleContainerUpdated()V

    .line 109
    return-void
.end method

.method public setPanelContainer(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->mPanelContainer:Landroid/view/View;

    .line 101
    invoke-direct {p0}, Lcom/sonymobile/keyguard/themedanimation/ClippingController;->notifyPanelContainerUpdated()V

    .line 99
    return-void
.end method
