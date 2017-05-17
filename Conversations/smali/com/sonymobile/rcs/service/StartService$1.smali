.class Lcom/sonymobile/rcs/service/StartService$1;
.super Landroid/content/BroadcastReceiver;
.source "StartService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/service/StartService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/service/StartService;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/service/StartService;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/sonymobile/rcs/service/StartService$1;->this$0:Lcom/sonymobile/rcs/service/StartService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 179
    new-instance v0, Lcom/sonymobile/rcs/service/StartService$1$1;

    invoke-direct {v0, p0, p2}, Lcom/sonymobile/rcs/service/StartService$1$1;-><init>(Lcom/sonymobile/rcs/service/StartService$1;Landroid/content/Intent;)V

    .line 184
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 185
    return-void
.end method
