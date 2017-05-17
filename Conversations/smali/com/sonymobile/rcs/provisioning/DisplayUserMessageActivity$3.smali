.class Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$3;
.super Ljava/lang/Object;
.source "DisplayUserMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->displayWelcomeDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$3;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$3;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    # getter for: Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->notificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->access$200(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$3;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    # getter for: Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->params:Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;
    invoke-static {v1}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->access$100(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 280
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isDisplayMessageAvailable:Z

    .line 282
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$3;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    # invokes: Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->resetConfiguration()V
    invoke-static {v0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->access$400(Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;)V

    .line 283
    iget-object v0, p0, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity$3;->this$0:Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provisioning/DisplayUserMessageActivity;->finish()V

    .line 284
    return-void
.end method
