.class final Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;
.super Ljava/lang/Object;
.source "TetheringTile.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/policy/TetheringController$TetheringSettingsChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/tiles/TetheringTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/tiles/TetheringTile;


# direct methods
.method private constructor <init>(Lcom/sonymobile/systemui/qs/tiles/TetheringTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/qs/tiles/TetheringTile;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/TetheringTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/systemui/qs/tiles/TetheringTile;Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/qs/tiles/TetheringTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/TetheringTile;)V

    return-void
.end method


# virtual methods
.method public onKeyguardChanged()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/TetheringTile;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->-wrap0(Lcom/sonymobile/systemui/qs/tiles/TetheringTile;)V

    .line 154
    return-void
.end method

.method public onTetheringSettingsChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/TetheringTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/TetheringTile;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/TetheringTile;->-wrap0(Lcom/sonymobile/systemui/qs/tiles/TetheringTile;)V

    .line 149
    return-void
.end method
