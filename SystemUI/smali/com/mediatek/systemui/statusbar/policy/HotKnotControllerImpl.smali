.class public Lcom/mediatek/systemui/statusbar/policy/HotKnotControllerImpl;
.super Ljava/lang/Object;
.source "HotKnotControllerImpl.java"

# interfaces
.implements Lcom/mediatek/systemui/statusbar/policy/HotKnotController;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHotKnotAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/mediatek/systemui/statusbar/policy/HotKnotControllerImpl;->mContext:Landroid/content/Context;

    .line 32
    const-string/jumbo v0, "HotKnotController"

    const-string/jumbo v1, "new HotKnotController()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/mediatek/hotknot/HotKnotAdapter;
    .locals 3

    .prologue
    .line 46
    iget-object v1, p0, Lcom/mediatek/systemui/statusbar/policy/HotKnotControllerImpl;->mHotKnotAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    if-nez v1, :cond_0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/systemui/statusbar/policy/HotKnotControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/hotknot/HotKnotAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/mediatek/hotknot/HotKnotAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/systemui/statusbar/policy/HotKnotControllerImpl;->mHotKnotAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mediatek/systemui/statusbar/policy/HotKnotControllerImpl;->mHotKnotAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "HotKnotController"

    const-string/jumbo v2, "getDefaultAdapter exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isHotKnotOn()Z
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/mediatek/systemui/statusbar/policy/HotKnotControllerImpl;->getAdapter()Lcom/mediatek/hotknot/HotKnotAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/mediatek/systemui/statusbar/policy/HotKnotControllerImpl;->getAdapter()Lcom/mediatek/hotknot/HotKnotAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotAdapter;->isEnabled()Z

    move-result v0

    return v0

    .line 40
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
