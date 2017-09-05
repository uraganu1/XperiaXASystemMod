.class public Lcom/sonymobile/keyguard/themedanimation/ClippingSources;
.super Ljava/lang/Object;
.source "ClippingSources.java"


# instance fields
.field private final mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonymobile/keyguard/themedanimation/ClippingSource;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;->mEntries:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public addEntry(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scalingParent"    # Landroid/view/View;

    .prologue
    .line 35
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/sonymobile/keyguard/themedanimation/ClippingSource;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 36
    check-cast v0, Lcom/sonymobile/keyguard/themedanimation/ClippingSource;

    .line 37
    .local v0, "src":Lcom/sonymobile/keyguard/themedanimation/ClippingSource;
    if-eqz p2, :cond_0

    .line 38
    invoke-interface {v0, p2}, Lcom/sonymobile/keyguard/themedanimation/ClippingSource;->setScalingParent(Landroid/view/View;)V

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;->mEntries:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .end local v0    # "src":Lcom/sonymobile/keyguard/themedanimation/ClippingSource;
    :cond_1
    return-void
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonymobile/keyguard/themedanimation/ClippingSource;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;->mEntries:Ljava/util/List;

    return-object v0
.end method

.method public invalidate()V
    .locals 5

    .prologue
    .line 77
    iget-object v4, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;->mEntries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 78
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 79
    iget-object v4, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;->mEntries:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/keyguard/themedanimation/ClippingSource;

    .line 80
    .local v2, "src":Lcom/sonymobile/keyguard/themedanimation/ClippingSource;
    if-eqz v2, :cond_0

    .line 81
    invoke-interface {v2}, Lcom/sonymobile/keyguard/themedanimation/ClippingSource;->getView()Landroid/view/View;

    move-result-object v3

    .line 82
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 83
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 78
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "src":Lcom/sonymobile/keyguard/themedanimation/ClippingSource;
    :cond_1
    return-void
.end method

.method public setClippingEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 64
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;->mEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 65
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 66
    iget-object v3, p0, Lcom/sonymobile/keyguard/themedanimation/ClippingSources;->mEntries:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/keyguard/themedanimation/ClippingSource;

    .line 67
    .local v2, "src":Lcom/sonymobile/keyguard/themedanimation/ClippingSource;
    if-eqz v2, :cond_0

    .line 68
    invoke-interface {v2, p1}, Lcom/sonymobile/keyguard/themedanimation/ClippingSource;->setClippingEnabled(Z)V

    .line 65
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    .end local v2    # "src":Lcom/sonymobile/keyguard/themedanimation/ClippingSource;
    :cond_1
    return-void
.end method
