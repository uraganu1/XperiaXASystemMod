.class Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$startRcsService;
.super Landroid/os/AsyncTask;
.source "DisplayUserMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "startRcsService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;


# direct methods
.method private constructor <init>(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$startRcsService;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;
    .param p2, "x1"    # Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$1;

    .prologue
    .line 513
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$startRcsService;-><init>(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 513
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$startRcsService;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$startRcsService;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    # getter for: Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->access$500(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$startRcsService;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/service/LauncherUtils;->forceLaunchRcsCoreService(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 521
    return-object v0

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$startRcsService;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    # getter for: Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;
    invoke-static {v0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->access$500(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    const-string/jumbo v1, "starting Https provisioning "

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
