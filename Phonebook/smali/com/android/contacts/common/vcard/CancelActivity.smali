.class public Lcom/android/contacts/common/vcard/CancelActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;
.source "CancelActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;,
        Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;
    }
.end annotation


# static fields
.field static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field static final JOB_ID:Ljava/lang/String; = "job_id"

.field static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mCancelListener:Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;

.field private mDisplayName:Ljava/lang/String;

.field private mJobId:I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;-><init>()V

    .line 42
    const-class v0, Lcom/android/contacts/common/vcard/CancelActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/CancelActivity;->LOG_TAG:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;-><init>(Lcom/android/contacts/common/vcard/CancelActivity;Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mCancelListener:Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;

    .line 41
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/CancelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 92
    .local v0, "uri":Landroid/net/Uri;
    const-string/jumbo v1, "job_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mJobId:I

    .line 93
    const-string/jumbo v1, "display_name"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mDisplayName:Ljava/lang/String;

    .line 94
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mType:I

    .line 95
    const v1, 0x7f0e0016

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/vcard/CancelActivity;->showDialog(I)V

    .line 85
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f090200

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 100
    packed-switch p1, :pswitch_data_0

    .line 124
    iget-object v2, p0, Lcom/android/contacts/common/vcard/CancelActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown dialog id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    return-object v2

    .line 103
    :pswitch_0
    iget v2, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mType:I

    if-ne v2, v3, :cond_0

    .line 104
    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f09017c

    invoke-virtual {p0, v3, v2}, Lcom/android/contacts/common/vcard/CancelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "message":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 111
    new-instance v3, Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;-><init>(Lcom/android/contacts/common/vcard/CancelActivity;Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;)V

    .line 108
    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 111
    iget-object v3, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mCancelListener:Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;

    .line 108
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 112
    iget-object v3, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mCancelListener:Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;

    const v4, 0x7f0901f9

    .line 108
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 113
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 106
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f09017d

    invoke-virtual {p0, v3, v2}, Lcom/android/contacts/common/vcard/CancelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_0

    .line 116
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    const v3, 0x7f09017e

    .line 116
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 118
    const v3, 0x1010355

    .line 116
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 119
    const v3, 0x7f090296

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/CancelActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 120
    iget-object v3, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mCancelListener:Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;

    .line 116
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 121
    iget-object v3, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mCancelListener:Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;

    .line 116
    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 122
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0016
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 132
    check-cast p2, Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    .end local p2    # "binder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/contacts/common/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/common/vcard/VCardService;

    move-result-object v1

    .line 134
    .local v1, "service":Lcom/android/contacts/common/vcard/VCardService;
    :try_start_0
    new-instance v0, Lcom/android/contacts/common/vcard/CancelRequest;

    iget v2, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mJobId:I

    iget-object v3, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mDisplayName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/android/contacts/common/vcard/CancelRequest;-><init>(ILjava/lang/String;)V

    .line 135
    .local v0, "request":Lcom/android/contacts/common/vcard/CancelRequest;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/common/vcard/VCardService;->handleCancelRequest(Lcom/android/contacts/common/vcard/CancelRequest;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {p0, p0}, Lcom/android/contacts/common/vcard/CancelActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/CancelActivity;->finish()V

    .line 131
    return-void

    .line 136
    .end local v0    # "request":Lcom/android/contacts/common/vcard/CancelRequest;
    :catchall_0
    move-exception v2

    .line 137
    invoke-virtual {p0, p0}, Lcom/android/contacts/common/vcard/CancelActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 136
    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 143
    return-void
.end method
