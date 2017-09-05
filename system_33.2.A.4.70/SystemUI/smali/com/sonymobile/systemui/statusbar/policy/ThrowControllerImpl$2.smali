.class Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$2;
.super Lcom/sonymobile/playanywhere/IPlayAnywhereCallback$Stub;
.source "ThrowControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$2;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;

    invoke-direct {p0}, Lcom/sonymobile/playanywhere/IPlayAnywhereCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceConnection(IIZ)V
    .locals 1
    .param p1, "sinkId"    # I
    .param p2, "state"    # I
    .param p3, "isLocal"    # Z

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl$2;->this$0:Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;->-wrap1(Lcom/sonymobile/systemui/statusbar/policy/ThrowControllerImpl;)V

    .line 95
    return-void
.end method

.method public onDeviceFound(Z)V
    .locals 0
    .param p1, "isFound"    # Z

    .prologue
    .line 105
    return-void
.end method

.method public onHqPushAvailable(ZLandroid/net/Uri;I)V
    .locals 0
    .param p1, "isAvailable"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "playlistPosition"    # I

    .prologue
    .line 100
    return-void
.end method
