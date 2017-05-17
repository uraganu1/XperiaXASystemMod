.class public Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;
.source "ExportVCardActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$ExportConfirmationListener;,
        Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$IncomingHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mConnected:Z

.field private mErrorReason:Ljava/lang/String;

.field private final mIncomingMessenger:Landroid/os/Messenger;

.field private volatile mProcessOngoing:Z

.field private mService:Lcom/android/contacts/common/vcard/VCardService;

.field private mStoragePath:Ljava/lang/String;

.field private mTargetFileName:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;)Lcom/android/contacts/common/vcard/VCardService;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->unbindAndFinish()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->LOG_TAG:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;-><init>()V

    .line 60
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$IncomingHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$IncomingHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$IncomingHandler;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mIncomingMessenger:Landroid/os/Messenger;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mProcessOngoing:Z

    .line 47
    return-void
.end method

.method private declared-synchronized setConnected(Z)V
    .locals 1
    .param p1, "connected"    # Z

    .prologue
    monitor-enter p0

    .line 226
    :try_start_0
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 225
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unbindAndFinish()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 230
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mConnected:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0, p0}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->setConnected(Z)V

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 229
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mProcessOngoing:Z

    .line 240
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->unbindAndFinish()V

    .line 238
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->unbindAndFinish()V

    .line 244
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f0e0025

    const v7, 0x7f0e000e

    const v6, 0x7f090296

    .line 94
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 97
    return-void

    .line 100
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 101
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->LOG_TAG:Ljava/lang/String;

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "External storage is in state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 103
    const-string/jumbo v6, ". Cancelling export"

    .line 102
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 101
    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->showDialog(I)V

    .line 105
    return-void

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 109
    .local v2, "receivedIntent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 110
    const-string/jumbo v4, "external_storage_path"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mStoragePath:Ljava/lang/String;

    .line 113
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mStoragePath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 114
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 117
    .local v3, "targetDirectory":Ljava/io/File;
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 118
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    .line 117
    if-eqz v4, :cond_5

    .line 119
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    .line 117
    :goto_1
    if-nez v4, :cond_3

    .line 120
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 125
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 126
    const-string/jumbo v5, "CALLING_ACTIVITY"

    .line 125
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "callingActivity":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "CALLING_ACTIVITY"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_7

    .line 131
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Failed to start vCard service"

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 133
    invoke-virtual {p0, v8}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->showDialog(I)V

    .line 134
    return-void

    .line 115
    .end local v0    # "callingActivity":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "targetDirectory":Ljava/io/File;
    :cond_4
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mStoragePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v3    # "targetDirectory":Ljava/io/File;
    goto :goto_0

    .line 117
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 121
    :cond_6
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->showDialog(I)V

    .line 122
    return-void

    .line 137
    .restart local v0    # "callingActivity":Ljava/lang/String;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_7
    const/4 v4, 0x1

    invoke-virtual {p0, v1, p0, v4}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 138
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Failed to connect to vCard service."

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 140
    invoke-virtual {p0, v8}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->showDialog(I)V

    .line 93
    :cond_8
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f09029e

    const v1, 0x7f09029d

    const/4 v2, 0x1

    const v4, 0x7f090200

    const/4 v3, 0x0

    .line 155
    sparse-switch p1, :sswitch_data_0

    .line 194
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 157
    :sswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    const v1, 0x7f09029b

    .line 157
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 159
    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    aput-object v2, v1, v3

    const v2, 0x7f09029c

    invoke-virtual {p0, v2, v1}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 161
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$ExportConfirmationListener;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mTargetFileName:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity$ExportConfirmationListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 162
    const v1, 0x7f0901f9

    .line 157
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 167
    :sswitch_1
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mProcessOngoing:Z

    .line 168
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 170
    new-array v1, v2, [Ljava/lang/Object;

    .line 171
    const v2, 0x7f09029f

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 170
    invoke-virtual {p0, v5, v1}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 176
    :sswitch_2
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mProcessOngoing:Z

    .line 177
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 179
    new-array v2, v2, [Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    :goto_0
    aput-object v0, v2, v3

    .line 179
    invoke-virtual {p0, v5, v2}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 181
    :cond_0
    const v0, 0x7f090296

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 187
    :sswitch_3
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mProcessOngoing:Z

    .line 188
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    const v1, 0x1010355

    .line 188
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 190
    const v1, 0x7f0900ae

    .line 188
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 155
    :sswitch_data_0
    .sparse-switch
        0x7f09029f -> :sswitch_1
        0x7f0e000e -> :sswitch_3
        0x7f0e0023 -> :sswitch_0
        0x7f0e0025 -> :sswitch_2
    .end sparse-switch
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 199
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "connected to service, requesting a destination file name"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->setConnected(Z)V

    .line 201
    check-cast p2, Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    .end local p2    # "binder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/contacts/common/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/common/vcard/VCardService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mIncomingMessenger:Landroid/os/Messenger;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/vcard/VCardService;->handleRequestAvailableExportDestination(Landroid/os/Messenger;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 208
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->setConnected(Z)V

    .line 211
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mProcessOngoing:Z

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Disconnected from service during the process ongoing."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const v0, 0x7f090296

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 215
    const v0, 0x7f0e0025

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->showDialog(I)V

    .line 207
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onStop()V

    .line 148
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->unbindAndFinish()V

    .line 146
    :cond_0
    return-void
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 1
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ExportVCardActivity;->mProcessOngoing:Z

    .line 222
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 220
    return-void
.end method
