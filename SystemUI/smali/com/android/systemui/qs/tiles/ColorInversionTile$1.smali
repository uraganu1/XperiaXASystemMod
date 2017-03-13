.class Lcom/android/systemui/qs/tiles/ColorInversionTile$1;
.super Lcom/android/systemui/qs/SecureSetting;
.source "ColorInversionTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ColorInversionTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ColorInversionTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/ColorInversionTile;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Landroid/os/Handler;
    .param p4, "$anonymous2"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile$1;->this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SecureSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "observedChange"    # Z

    .prologue
    .line 47
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile$1;->this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->-get1(Lcom/android/systemui/qs/tiles/ColorInversionTile;)Lcom/android/systemui/qs/UsageTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/UsageTracker;->trackUsage()V

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile$1;->this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->-get0(Lcom/android/systemui/qs/tiles/ColorInversionTile;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile$1;->this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->-wrap0(Lcom/android/systemui/qs/tiles/ColorInversionTile;Ljava/lang/Object;)V

    .line 46
    :cond_2
    return-void
.end method
