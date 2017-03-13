.class final Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;
.super Ljava/lang/Object;
.source "StaminaTile.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/policy/StaminaController$StaminaSettingsChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/tiles/StaminaTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/tiles/StaminaTile;


# direct methods
.method private constructor <init>(Lcom/sonymobile/systemui/qs/tiles/StaminaTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/qs/tiles/StaminaTile;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/StaminaTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/systemui/qs/tiles/StaminaTile;Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/qs/tiles/StaminaTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/StaminaTile;)V

    return-void
.end method


# virtual methods
.method public onKeyguardChanged()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/StaminaTile;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->-wrap0(Lcom/sonymobile/systemui/qs/tiles/StaminaTile;)V

    .line 118
    return-void
.end method

.method public onStaminaSettingsChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/StaminaTile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/StaminaTile;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/StaminaTile;->-wrap0(Lcom/sonymobile/systemui/qs/tiles/StaminaTile;)V

    .line 114
    return-void
.end method
