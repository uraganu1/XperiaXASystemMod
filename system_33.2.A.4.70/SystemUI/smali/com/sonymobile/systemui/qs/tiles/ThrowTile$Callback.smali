.class final Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;
.super Ljava/lang/Object;
.source "ThrowTile.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/policy/ThrowController$ThrowSettingsChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/tiles/ThrowTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/tiles/ThrowTile;


# direct methods
.method private constructor <init>(Lcom/sonymobile/systemui/qs/tiles/ThrowTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/qs/tiles/ThrowTile;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/ThrowTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/systemui/qs/tiles/ThrowTile;Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/qs/tiles/ThrowTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/ThrowTile;)V

    return-void
.end method


# virtual methods
.method public onKeyguardChanged()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/ThrowTile;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->-wrap0(Lcom/sonymobile/systemui/qs/tiles/ThrowTile;)V

    .line 83
    return-void
.end method

.method public onThrowSettingsChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ThrowTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/ThrowTile;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/ThrowTile;->-wrap0(Lcom/sonymobile/systemui/qs/tiles/ThrowTile;)V

    .line 78
    return-void
.end method
