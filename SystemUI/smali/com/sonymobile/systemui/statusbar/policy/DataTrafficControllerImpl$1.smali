.class Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "DataTrafficControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->-wrap0(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)V

    .line 68
    return-void
.end method
