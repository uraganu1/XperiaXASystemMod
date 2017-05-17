.class public Lcom/sonymobile/rcs/permission/PermissionControllerActivity;
.super Landroid/app/Activity;
.source "PermissionControllerActivity.java"

# interfaces
.implements Lcom/sonymobile/rcs/permission/SomcDialogCallBack;


# static fields
.field private static logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# instance fields
.field private actualPermissionReqArray:[Ljava/lang/String;

.field private mIsMandatoryPermissionRequest:Z

.field private mPermissionFlag:I

.field private mRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "PermissionControllerActivity"

    .line 25
    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createPermissionModelListForDialogs(Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "dialogType"    # Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v5, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->mRequestMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 171
    return-object v5

    .line 155
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 156
    .local v2, "permissionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 157
    .local v1, "needRequest":Z
    if-eqz v1, :cond_0

    .line 160
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 161
    .local v3, "permissionName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    .line 162
    .local v4, "shouldShowRationale":Z
    if-nez v4, :cond_3

    .line 166
    :cond_2
    sget-object v6, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;->APP_INFO_DIALOG:Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

    invoke-virtual {v6, p1}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/sonymobile/rcs/permission/PermissionUtil;->isOptionalPermission(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 168
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_3
    sget-object v6, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;->RATIONALE_DIALOG:Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

    invoke-virtual {v6, p1}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v3}, Lcom/sonymobile/rcs/permission/PermissionUtil;->isEasilyUnderstandablePermission(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 165
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private createPermissionRequestArray()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v2, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->mRequestMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 150
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4

    .line 143
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 144
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 146
    .local v3, "shouldRequest":Z
    if-eqz v3, :cond_0

    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private showAppInfoDialog()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    sget-object v1, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;->APP_INFO_DIALOG:Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->createPermissionModelListForDialogs(Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;)Ljava/util/ArrayList;

    move-result-object v0

    .line 126
    .local v0, "requestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 131
    :cond_0
    return v2

    .line 126
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    sget-object v1, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;->APP_INFO_DIALOG:Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

    const-string/jumbo v2, "app_info_dialog"

    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->showSomcPermissionsPopup(Ljava/util/ArrayList;Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;Ljava/lang/String;)V

    .line 129
    const/4 v1, 0x1

    return v1
.end method

.method private showRationaleDialog()V
    .locals 3

    .prologue
    .line 82
    sget-object v1, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;->RATIONALE_DIALOG:Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->createPermissionModelListForDialogs(Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;)Ljava/util/ArrayList;

    move-result-object v0

    .line 84
    .local v0, "requestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->actualPermissionReqArray:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 88
    return-void

    .line 84
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    sget-object v1, Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;->RATIONALE_DIALOG:Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;

    const-string/jumbo v2, "rationale_dialog"

    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->showSomcPermissionsPopup(Ljava/util/ArrayList;Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method private showSomcPermissionsPopup(Ljava/util/ArrayList;Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;Ljava/lang/String;)V
    .locals 2
    .param p2, "dialogType"    # Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;
    .param p3, "dialogTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "requestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->newInstance(Ljava/util/ArrayList;Lcom/sonymobile/rcs/permission/SomcPermissionDialog$SomcDialogType;)Lcom/sonymobile/rcs/permission/SomcPermissionDialog;

    move-result-object v0

    .line 137
    .local v0, "dialog":Lcom/sonymobile/rcs/permission/SomcPermissionDialog;
    invoke-virtual {v0, p0}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->setCallBack(Lcom/sonymobile/rcs/permission/SomcDialogCallBack;)V

    .line 138
    invoke-virtual {p0}, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/sonymobile/rcs/permission/SomcPermissionDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 139
    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 0

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->finish()V

    .line 182
    return-void
.end method

.method public onContinueClicked()V
    .locals 0

    .prologue
    .line 186
    invoke-static {p0}, Lcom/sonymobile/rcs/permission/PermissionUtil;->startAppInfoSettingsActivity(Landroid/content/Context;)V

    .line 187
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget-object v3, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 41
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "permissions"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iput-object v3, p0, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->mRequestMap:Ljava/util/HashMap;

    .line 43
    invoke-virtual {p0}, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "is_mandatory"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->mIsMandatoryPermissionRequest:Z

    .line 45
    invoke-virtual {p0}, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "redirecting_flag"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->mPermissionFlag:I

    .line 47
    iget-object v3, p0, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->mRequestMap:Ljava/util/HashMap;

    if-nez v3, :cond_2

    .line 48
    :cond_0
    return-void

    .line 39
    :cond_1
    sget-object v3, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v4, "starting PermissionControllerActivity"

    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->mRequestMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->createPermissionRequestArray()[Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "permissionArray":[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_3

    .line 54
    invoke-static {p0, v1}, Lcom/sonymobile/rcs/permission/PermissionUtil;->getMissingPermissions(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 56
    .local v0, "missingPermissionArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->actualPermissionReqArray:[Ljava/lang/String;

    .line 65
    iget-object v3, p0, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->actualPermissionReqArray:[Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->actualPermissionReqArray:[Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->showRationaleDialog()V

    .line 67
    return-void

    .line 52
    .end local v0    # "missingPermissionArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    return-void

    .line 57
    .restart local v0    # "missingPermissionArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->mRequestMap:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/sonymobile/rcs/permission/PermissionsController;->createNewResponseMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v2

    .line 59
    .local v2, "responseMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget v3, p0, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->mPermissionFlag:I

    invoke-static {v2, v3}, Lcom/sonymobile/rcs/permission/PermissionsController;->invokeCallback(Ljava/util/HashMap;I)V

    .line 60
    invoke-static {p0}, Lcom/sonymobile/rcs/permission/PermissionNotification;->cancelNotification(Landroid/content/Context;)V

    .line 61
    invoke-virtual {p0}, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->finish()V

    .line 62
    return-void
.end method

.method public onOkClicked()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->actualPermissionReqArray:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 177
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
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 97
    packed-switch p1, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 99
    :pswitch_0
    invoke-static {p0}, Lcom/sonymobile/rcs/permission/PermissionNotification;->cancelNotification(Landroid/content/Context;)V

    .line 100
    iget-object v6, p0, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->mRequestMap:Ljava/util/HashMap;

    invoke-static {v6}, Lcom/sonymobile/rcs/permission/PermissionsController;->createNewResponseMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    .line 102
    .local v1, "responseMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .local v2, "shouldShowAppInfoDlg":Z
    const/4 v0, 0x0

    .line 103
    .local v0, "i":I
    :goto_1
    array-length v6, p2

    if-lt v0, v6, :cond_1

    .line 112
    if-nez v2, :cond_5

    .line 115
    :cond_0
    iget v4, p0, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->mPermissionFlag:I

    invoke-static {v1, v4}, Lcom/sonymobile/rcs/permission/PermissionsController;->invokeCallback(Ljava/util/HashMap;I)V

    .line 116
    invoke-virtual {p0}, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->finish()V

    goto :goto_0

    .line 104
    :cond_1
    aget v6, p3, v0

    if-eqz v6, :cond_2

    move v3, v4

    .line 105
    .local v3, "success":Z
    :goto_2
    aget-object v6, p2, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v7, p0, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->mRequestMap:Ljava/util/HashMap;

    aget-object v8, p2, v0

    if-eqz v3, :cond_3

    move v6, v4

    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    if-eqz v3, :cond_4

    .line 103
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3    # "success":Z
    :cond_2
    move v3, v5

    .line 104
    goto :goto_2

    .restart local v3    # "success":Z
    :cond_3
    move v6, v5

    .line 106
    goto :goto_3

    .line 108
    :cond_4
    const/4 v2, 0x1

    goto :goto_4

    .line 112
    .end local v3    # "success":Z
    :cond_5
    invoke-direct {p0}, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->showAppInfoDialog()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    return-void

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 72
    sget-object v0, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    :goto_0
    iget-boolean v0, p0, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->mIsMandatoryPermissionRequest:Z

    if-nez v0, :cond_2

    .line 79
    :cond_0
    :goto_1
    return-void

    .line 73
    :cond_1
    sget-object v0, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "OnResume"

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-static {p0}, Lcom/sonymobile/rcs/permission/PermissionUtil;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget v0, p0, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->mPermissionFlag:I

    invoke-static {v0}, Lcom/sonymobile/rcs/permission/PermissionUtil;->redirecting(I)V

    .line 77
    invoke-virtual {p0}, Lcom/sonymobile/rcs/permission/PermissionControllerActivity;->finish()V

    goto :goto_1
.end method
