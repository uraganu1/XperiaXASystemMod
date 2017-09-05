.class final Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$Callback;
.super Ljava/lang/Object;
.source "DataTrafficTile.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/policy/DataTrafficController$DataTrafficSettingsChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;


# direct methods
.method private constructor <init>(Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;)V

    return-void
.end method


# virtual methods
.method public onDataTrafficSettingsChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->-wrap0(Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;)V

    .line 95
    return-void
.end method

.method public onKeyguardChanged()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;->-wrap0(Lcom/sonymobile/systemui/qs/tiles/DataTrafficTile;)V

    .line 99
    return-void
.end method
