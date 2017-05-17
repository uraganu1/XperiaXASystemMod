.class Lcom/sonymobile/rcs/service/StartService$2;
.super Landroid/os/AsyncTask;
.source "StartService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/service/StartService;->checkAccount()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/rcs/service/StartService;


# direct methods
.method constructor <init>(Lcom/sonymobile/rcs/service/StartService;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/sonymobile/rcs/service/StartService$2;->this$0:Lcom/sonymobile/rcs/service/StartService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 410
    check-cast p1, [Landroid/content/Context;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/service/StartService$2;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 1
    .param p1, "context"    # [Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 413
    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createInstance(Landroid/content/Context;)V

    .line 414
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->disableRcseContactIcon()V

    .line 415
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->removeRcseRawContacts()V

    .line 416
    iget-object v0, p0, Lcom/sonymobile/rcs/service/StartService$2;->this$0:Lcom/sonymobile/rcs/service/StartService;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/StartService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/service/LauncherUtils;->resetRcsConfig(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 417
    return-object v0
.end method
