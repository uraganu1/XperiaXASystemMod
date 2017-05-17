.class public Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;
.super Landroid/app/Activity;
.source "OptionalPermissionActivity.java"

# interfaces
.implements Lcom/sonyericsson/conversations/permission/SomcDialogCallBack;


# instance fields
.field private mPermissionStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowAppInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->mShowAppInfo:Z

    .line 21
    return-void
.end method

.method private initDataAndRequestPermissions(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    const-string/jumbo v4, "permission_string"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    const-string/jumbo v4, "permission_app_info"

    .line 44
    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    :goto_0
    const-string/jumbo v4, "permission_string"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->mPermissionStrings:Ljava/util/ArrayList;

    .line 49
    const-string/jumbo v4, "permission_app_info"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->mShowAppInfo:Z

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v1, "nonGrantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->mPermissionStrings:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 52
    iget-object v4, p0, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->mPermissionStrings:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "permission$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 53
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 46
    .end local v1    # "nonGrantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "permission$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->finish()V

    goto :goto_0

    .line 59
    .restart local v1    # "nonGrantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 60
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 62
    .local v0, "actualPermissionReqArray":[Ljava/lang/String;
    const/16 v4, 0x64

    invoke-virtual {p0, v0, v4}, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 43
    .end local v0    # "actualPermissionReqArray":[Ljava/lang/String;
    :goto_2
    return-void

    .line 64
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->finish()V

    goto :goto_2
.end method

.method private showSomcPermissionsRationalePopup()V
    .locals 4

    .prologue
    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v1, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v2, p0, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->mPermissionStrings:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    sget-object v2, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;->APP_INFO_DIALOG:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    .line 130
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->newInstance(Ljava/util/ArrayList;Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;)Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;

    move-result-object v0

    .line 132
    .local v0, "dialog":Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;
    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->setCallBack(Lcom/sonyericsson/conversations/permission/SomcDialogCallBack;)V

    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "optional_permission_app_info_dialog"

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 127
    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->finish()V

    .line 142
    return-void
.end method

.method public onContinueClicked()V
    .locals 0

    .prologue
    .line 148
    invoke-static {p0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->startAppInfoSettingsActivity(Landroid/content/Context;)V

    .line 149
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->finish()V

    .line 147
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 32
    const-string/jumbo v0, "starting OptionalPermissionActivity"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->initDataAndRequestPermissions(Landroid/content/Intent;)V

    .line 29
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->initDataAndRequestPermissions(Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method public onOkClicked()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 9
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
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 82
    const/16 v5, 0x64

    if-ne p1, v5, :cond_3

    .line 83
    const/4 v4, 0x0

    .line 84
    .local v4, "shouldShowRequestPermissionRationale":Z
    iget-object v5, p0, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->mPermissionStrings:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "permission$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 85
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    const/4 v4, 0x1

    goto :goto_0

    .line 89
    .end local v2    # "permission":Ljava/lang/String;
    :cond_1
    array-length v5, p3

    if-gtz v5, :cond_2

    .line 90
    return-void

    .line 91
    :cond_2
    array-length v5, p2

    if-ne v5, v8, :cond_6

    .line 92
    aget v5, p3, v6

    if-nez v5, :cond_4

    .line 93
    invoke-static {v8}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->onPermissionResponse(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->finish()V

    .line 81
    .end local v3    # "permission$iterator":Ljava/util/Iterator;
    .end local v4    # "shouldShowRequestPermissionRationale":Z
    :cond_3
    :goto_1
    return-void

    .line 95
    .restart local v3    # "permission$iterator":Ljava/util/Iterator;
    .restart local v4    # "shouldShowRequestPermissionRationale":Z
    :cond_4
    if-nez v4, :cond_5

    iget-boolean v5, p0, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->mShowAppInfo:Z

    if-eqz v5, :cond_5

    .line 98
    invoke-static {v6}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->onPermissionResponse(Z)V

    .line 99
    invoke-direct {p0}, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->showSomcPermissionsRationalePopup()V

    goto :goto_1

    .line 101
    :cond_5
    invoke-static {v6}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->onPermissionResponse(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->finish()V

    goto :goto_1

    .line 104
    :cond_6
    array-length v5, p2

    if-le v5, v8, :cond_3

    .line 105
    const/4 v1, 0x0

    .line 106
    .local v1, "numGranted":I
    array-length v7, p3

    move v5, v6

    :goto_2
    if-ge v5, v7, :cond_8

    aget v0, p3, v5

    .line 107
    .local v0, "granted":I
    if-nez v0, :cond_7

    .line 108
    add-int/lit8 v1, v1, 0x1

    .line 106
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 111
    .end local v0    # "granted":I
    :cond_8
    array-length v5, p2

    if-ne v1, v5, :cond_9

    .line 112
    invoke-static {v8}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->onPermissionResponse(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->finish()V

    goto :goto_1

    .line 114
    :cond_9
    if-nez v4, :cond_a

    iget-boolean v5, p0, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->mShowAppInfo:Z

    if-eqz v5, :cond_a

    .line 117
    invoke-static {v6}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->onPermissionResponse(Z)V

    .line 118
    invoke-direct {p0}, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->showSomcPermissionsRationalePopup()V

    goto :goto_1

    .line 120
    :cond_a
    invoke-static {v6}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->onPermissionResponse(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->finish()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 71
    iget-object v2, p0, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->mPermissionStrings:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "permission$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    .local v0, "permission":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 73
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->onPermissionResponse(Z)V

    goto :goto_0

    .line 69
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    return-void
.end method
