.class Lcom/sonymobile/rcs/service/StartService$1$1;
.super Ljava/lang/Thread;
.source "StartService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/service/StartService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/rcs/service/StartService$1;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/service/StartService$1;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/sonymobile/rcs/service/StartService$1$1;->this$1:Lcom/sonymobile/rcs/service/StartService$1;

    iput-object p2, p0, Lcom/sonymobile/rcs/service/StartService$1$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sonymobile/rcs/service/StartService$1$1;->this$1:Lcom/sonymobile/rcs/service/StartService$1;

    iget-object v0, v0, Lcom/sonymobile/rcs/service/StartService$1;->this$0:Lcom/sonymobile/rcs/service/StartService;

    iget-object v1, p0, Lcom/sonymobile/rcs/service/StartService$1$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sonymobile/rcs/service/StartService;->connectionEvent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sonymobile/rcs/service/StartService;->access$000(Lcom/sonymobile/rcs/service/StartService;Ljava/lang/String;)V

    .line 182
    return-void
.end method
