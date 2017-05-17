.class Lcom/sonymobile/rcs/utils/DeviceUtils$1;
.super Landroid/os/AsyncTask;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/rcs/utils/DeviceUtils;->updateImLauncherVisibility(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 164
    check-cast p1, [Landroid/content/Context;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/utils/DeviceUtils$1;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 1
    .param p1, "context"    # [Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 167
    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createInstance(Landroid/content/Context;)V

    .line 168
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->removeRcseRawContacts()V

    const/4 v0, 0x0

    .line 169
    return-object v0
.end method
