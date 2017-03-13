.class Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "TetheringControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;->-wrap0(Lcom/sonymobile/systemui/statusbar/policy/TetheringControllerImpl;)V

    .line 43
    return-void
.end method
