.class Lcom/sonymobile/settings/stamina/StaminaMode$StaminaActiveStateObserver;
.super Landroid/database/ContentObserver;
.source "StaminaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/StaminaMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaminaActiveStateObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/StaminaMode;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/stamina/StaminaMode;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/stamina/StaminaMode;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaMode$StaminaActiveStateObserver;->this$0:Lcom/sonymobile/settings/stamina/StaminaMode;

    .line 258
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 257
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaMode$StaminaActiveStateObserver;->this$0:Lcom/sonymobile/settings/stamina/StaminaMode;

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaMode;->-wrap0(Lcom/sonymobile/settings/stamina/StaminaMode;)V

    .line 262
    return-void
.end method
