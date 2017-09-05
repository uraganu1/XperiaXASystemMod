.class Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "StaminaControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;->-wrap0(Lcom/sonymobile/systemui/statusbar/policy/StaminaControllerImpl;)V

    .line 38
    return-void
.end method
