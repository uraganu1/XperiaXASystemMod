.class public Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;
.super Landroid/app/Activity;
.source "PermissionControllerActivity.java"

# interfaces
.implements Lcom/sonyericsson/conversations/permission/SomcDialogCallBack;


# instance fields
.field private mPermissionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createRationalePermissionList()Ljava/util/ArrayList;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v2, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v3, p0, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->mPermissionList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "permissionName$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .local v0, "permissionName":Ljava/lang/CharSequence;
    move-object v3, v0

    .line 77
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    .end local v0    # "permissionName":Ljava/lang/CharSequence;
    :cond_1
    return-object v2
.end method

.method private initAndStartActivity()V
    .locals 3

    .prologue
    .line 155
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ConversationsApp;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ConversationsApp;->init()V

    .line 157
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "return-activity"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 169
    const-string/jumbo v1, "Cannot return to unspecified Activity"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 171
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    return-void

    .line 160
    :pswitch_0
    const-class v1, Lcom/sonyericsson/conversations/ui/ShareMediaActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 165
    :pswitch_1
    const-class v1, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private requestPermissions()V
    .locals 3

    .prologue
    .line 85
    iget-object v2, p0, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->mPermissionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 86
    .local v0, "actualPermissionReqArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->mPermissionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->mPermissionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 84
    return-void
.end method

.method private showAppInfoDialog()Z
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->mPermissionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->mPermissionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->mPermissionList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;->APP_INFO_DIALOG:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    .line 134
    const-string/jumbo v2, "controllerActivity_app_info_dialog"

    .line 133
    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->showSomcPermissionsPopup(Ljava/util/ArrayList;Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method private showRationaleDialog()V
    .locals 3

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->createRationalePermissionList()Ljava/util/ArrayList;

    move-result-object v0

    .line 63
    .local v0, "requestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->requestPermissions()V

    .line 67
    return-void

    .line 69
    :cond_0
    sget-object v1, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;->RATIONALE_DIALOG:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    .line 70
    const-string/jumbo v2, "controllerActivity_rationale_dialog"

    .line 69
    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->showSomcPermissionsPopup(Ljava/util/ArrayList;Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method private showSomcPermissionsPopup(Ljava/util/ArrayList;Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;Ljava/lang/String;)V
    .locals 2
    .param p2, "dialogType"    # Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;
    .param p3, "dialogTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "requestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-static {p1, p2}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->newInstance(Ljava/util/ArrayList;Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;)Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;

    move-result-object v0

    .line 95
    .local v0, "dialog":Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;
    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->setCallBack(Lcom/sonyericsson/conversations/permission/SomcDialogCallBack;)V

    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 93
    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 0

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->finish()V

    .line 144
    return-void
.end method

.method public onContinueClicked()V
    .locals 0

    .prologue
    .line 150
    invoke-static {p0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->startAppInfoSettingsActivity(Landroid/content/Context;)V

    .line 151
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->finish()V

    .line 149
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 41
    const-string/jumbo v0, "starting PermissionControllerActivity"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 43
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->getMissingMandatoryPermissions(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->mPermissionList:Ljava/util/ArrayList;

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->mPermissionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->finish()V

    .line 46
    return-void

    .line 48
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->showRationaleDialog()V

    .line 38
    return-void
.end method

.method public onOkClicked()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->requestPermissions()V

    .line 139
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    packed-switch p1, :pswitch_data_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 104
    :pswitch_0
    const/4 v2, 0x0

    .line 105
    .local v2, "shouldShowAppInfoDlg":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_3

    .line 106
    aget v3, p3, v1

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 107
    .local v0, "granted":Z
    :goto_2
    if-eqz v0, :cond_2

    .line 109
    iget-object v3, p0, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->mPermissionList:Ljava/util/ArrayList;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 105
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    .end local v0    # "granted":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "granted":Z
    goto :goto_2

    .line 111
    :cond_2
    const/4 v2, 0x1

    goto :goto_3

    .line 115
    .end local v0    # "granted":Z
    :cond_3
    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->showAppInfoDialog()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 116
    return-void

    .line 118
    :cond_4
    invoke-static {p0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->finish()V

    .line 120
    invoke-direct {p0}, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->initAndStartActivity()V

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 55
    invoke-static {p0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->finish()V

    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/conversations/permission/PermissionControllerActivity;->initAndStartActivity()V

    .line 52
    :cond_0
    return-void
.end method
