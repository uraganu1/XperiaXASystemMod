.class Lcom/sonymobile/settings/wifi/SomcWifiSettings$1;
.super Ljava/lang/Object;
.source "SomcWifiSettings.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/wifi/SomcWifiSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/wifi/SomcWifiSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/wifi/SomcWifiSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/wifi/SomcWifiSettings;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonymobile/settings/wifi/SomcWifiSettings$1;->this$0:Lcom/sonymobile/settings/wifi/SomcWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/settings/wifi/SomcWifiSettings$1;->this$0:Lcom/sonymobile/settings/wifi/SomcWifiSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/wifi/SomcWifiSettings;->-get0(Lcom/sonymobile/settings/wifi/SomcWifiSettings;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 81
    return-void
.end method
