.class Lcom/sonymobile/rcs/settings/RcsProvisionAgain$ReProvisionTask;
.super Landroid/os/AsyncTask;
.source "RcsProvisionAgain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/settings/RcsProvisionAgain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReProvisionTask"
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
.field final synthetic this$0:Lcom/sonymobile/rcs/settings/RcsProvisionAgain;


# direct methods
.method private constructor <init>(Lcom/sonymobile/rcs/settings/RcsProvisionAgain;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sonymobile/rcs/settings/RcsProvisionAgain$ReProvisionTask;->this$0:Lcom/sonymobile/rcs/settings/RcsProvisionAgain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/rcs/settings/RcsProvisionAgain;Lcom/sonymobile/rcs/settings/RcsProvisionAgain$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/rcs/settings/RcsProvisionAgain;
    .param p2, "x1"    # Lcom/sonymobile/rcs/settings/RcsProvisionAgain$1;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/settings/RcsProvisionAgain$ReProvisionTask;-><init>(Lcom/sonymobile/rcs/settings/RcsProvisionAgain;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/settings/RcsProvisionAgain$ReProvisionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonymobile/rcs/settings/RcsProvisionAgain$ReProvisionTask;->this$0:Lcom/sonymobile/rcs/settings/RcsProvisionAgain;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonymobile/rcs/service/LauncherUtils;->launchRcsService(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    .line 87
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/settings/RcsProvisionAgain$ReProvisionTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 93
    iget-object v3, p0, Lcom/sonymobile/rcs/settings/RcsProvisionAgain$ReProvisionTask;->this$0:Lcom/sonymobile/rcs/settings/RcsProvisionAgain;

    # getter for: Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->mActivateJoynText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->access$100(Lcom/sonymobile/rcs/settings/RcsProvisionAgain;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v3, p0, Lcom/sonymobile/rcs/settings/RcsProvisionAgain$ReProvisionTask;->this$0:Lcom/sonymobile/rcs/settings/RcsProvisionAgain;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 95
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/sonymobile/rcs/settings/RcsProvisionAgain$ReProvisionTask;->this$0:Lcom/sonymobile/rcs/settings/RcsProvisionAgain;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v2, "rcsprovisionComponent":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.sonyericsson.conversations.SHAREMEDIA_RECEIVER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "removeaccount"

    .line 98
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    iget-object v3, p0, Lcom/sonymobile/rcs/settings/RcsProvisionAgain$ReProvisionTask;->this$0:Lcom/sonymobile/rcs/settings/RcsProvisionAgain;

    invoke-virtual {v3, v0}, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 100
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 103
    iget-object v3, p0, Lcom/sonymobile/rcs/settings/RcsProvisionAgain$ReProvisionTask;->this$0:Lcom/sonymobile/rcs/settings/RcsProvisionAgain;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/settings/RcsProvisionAgain;->finish()V

    .line 105
    return-void
.end method
