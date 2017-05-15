.class Lcom/mediatek/datausage/OverViewTabAdapter$4;
.super Ljava/lang/Object;
.source "OverViewTabAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/datausage/OverViewTabAdapter;->inflateLockScreenView(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/datausage/OverViewTabAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/datausage/OverViewTabAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/datausage/OverViewTabAdapter;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/mediatek/datausage/OverViewTabAdapter$4;->this$0:Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 605
    const-string/jumbo v1, "OverViewTabAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Data Saving isChecked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter$4;->this$0:Lcom/mediatek/datausage/OverViewTabAdapter;

    iget-object v1, v1, Lcom/mediatek/datausage/OverViewTabAdapter;->mSavingService:Lcom/mediatek/common/operamax/ILoaderService;

    if-eqz v1, :cond_0

    .line 608
    if-eqz p2, :cond_1

    .line 609
    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter$4;->this$0:Lcom/mediatek/datausage/OverViewTabAdapter;

    iget-object v1, v1, Lcom/mediatek/datausage/OverViewTabAdapter;->mSavingService:Lcom/mediatek/common/operamax/ILoaderService;

    invoke-interface {v1}, Lcom/mediatek/common/operamax/ILoaderService;->startSaving()V

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    iget-object v1, p0, Lcom/mediatek/datausage/OverViewTabAdapter$4;->this$0:Lcom/mediatek/datausage/OverViewTabAdapter;

    iget-object v1, v1, Lcom/mediatek/datausage/OverViewTabAdapter;->mSavingService:Lcom/mediatek/common/operamax/ILoaderService;

    invoke-interface {v1}, Lcom/mediatek/common/operamax/ILoaderService;->stopSaving()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "OverViewTabAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception happened! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
