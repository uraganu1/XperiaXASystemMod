.class final Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile$Callback;
.super Ljava/lang/Object;
.source "ScreenMirroringTile.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/policy/ScreenMirroringController$ScreenMirroringSettingsChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;


# direct methods
.method private constructor <init>(Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;)V

    return-void
.end method


# virtual methods
.method public onKeyguardChanged()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;->-wrap0(Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;)V

    .line 86
    return-void
.end method

.method public onScreenMirroringSettingsChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;->-wrap0(Lcom/sonymobile/systemui/qs/tiles/ScreenMirroringTile;)V

    .line 81
    return-void
.end method
