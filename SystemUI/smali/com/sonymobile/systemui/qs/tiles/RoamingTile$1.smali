.class Lcom/sonymobile/systemui/qs/tiles/RoamingTile$1;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "RoamingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->updateListenRoaming(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/tiles/RoamingTile;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/qs/tiles/RoamingTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/qs/tiles/RoamingTile;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Landroid/os/Handler;
    .param p4, "$anonymous2"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile$1;->this$0:Lcom/sonymobile/systemui/qs/tiles/RoamingTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/RoamingTile$1;->this$0:Lcom/sonymobile/systemui/qs/tiles/RoamingTile;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/systemui/qs/tiles/RoamingTile;->-wrap0(Lcom/sonymobile/systemui/qs/tiles/RoamingTile;Ljava/lang/Object;)V

    .line 95
    return-void
.end method
