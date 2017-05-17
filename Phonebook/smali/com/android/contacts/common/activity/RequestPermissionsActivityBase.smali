.class public abstract Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;
.super Landroid/app/Activity;
.source "RequestPermissionsActivityBase.java"


# static fields
.field private static final EXTRA_IS_WELCOME_DIALOG_NEEDED:Ljava/lang/String; = "IS_WELCOME_DIALOG_NEEDED"

.field private static final PERMISSIONS_REQUEST_ALL_PERMISSIONS:I = 0x1

.field public static final PREVIOUS_ACTIVITY_INTENT:Ljava/lang/String; = "previous_intent"


# instance fields
.field private mAppContactsLabel:Ljava/lang/String;

.field mInformativeDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

.field private mPreviousActivityIntent:Landroid/content/Intent;

.field mRationaleDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

.field mWelcomeDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;


# direct methods
.method static synthetic -wrap0(Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->requestPermissions()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mAppContactsLabel:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mWelcomeDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    .line 70
    iput-object v0, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mRationaleDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    .line 76
    iput-object v0, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mInformativeDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    .line 45
    return-void
.end method

.method protected static hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 235
    :try_start_0
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    .line 236
    .local v0, "permission":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 238
    return v2

    .line 235
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    .line 243
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 241
    return v1

    .line 242
    :catchall_0
    move-exception v1

    .line 243
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 242
    throw v1
.end method

.method private isAllGranted([Ljava/lang/String;[I)Z
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResult"    # [I

    .prologue
    const/4 v2, 0x0

    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 168
    aget v1, p2, v0

    if-eqz v1, :cond_0

    .line 169
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->isPermissionRequired(Ljava/lang/String;)Z

    move-result v1

    .line 168
    if-eqz v1, :cond_0

    .line 170
    return v2

    .line 167
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private isPermissionRequired(Ljava/lang/String;)Z
    .locals 2
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->getRequiredPermissions()[Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {p0, v1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->getAllDeniedPermissionsFromGrps(Landroid/app/Activity;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "needPermissions":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private requestPermissions()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->getRequiredPermissions()[Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-static {p0, v5}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->getAllDeniedPermissionsFromGrps(Landroid/app/Activity;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "needPermissions":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v3, "unsatisfiedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    .line 193
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 195
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 198
    .end local v2    # "permission":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 199
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Request permission activity was called even though all permissions are satisfied."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .end local v1    # "needPermissions":[Ljava/lang/String;
    .end local v3    # "unsatisfiedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    .line 229
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 228
    throw v4

    .line 203
    .restart local v1    # "needPermissions":[Ljava/lang/String;
    .restart local v3    # "unsatisfiedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    if-eqz v3, :cond_3

    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 205
    invoke-static {p0, v1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->getRationaleTextMessage(Landroid/app/Activity;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "message":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 209
    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->getPreference(Landroid/content/Context;)Z

    move-result v4

    .line 208
    if-eqz v4, :cond_4

    .line 211
    new-instance v4, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase$2;

    invoke-direct {v4, p0, v3}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase$2;-><init>(Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;Ljava/util/ArrayList;)V

    .line 210
    invoke-direct {p0, v0, v4}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->showRationaleDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    .end local v0    # "message":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 184
    return-void

    .line 224
    .restart local v0    # "message":Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 223
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 225
    const/4 v5, 0x1

    .line 222
    invoke-virtual {p0, v4, v5}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->requestPermissions([Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private showInformativeDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    return-void

    .line 311
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 312
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string/jumbo v1, "message_title"

    .line 314
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mAppContactsLabel:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f0903d3

    invoke-virtual {p0, v3, v2}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string/jumbo v1, "massage_sub_title"

    .line 316
    const v2, 0x7f0903d4

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string/jumbo v1, "pos_btn_str_res"

    .line 318
    const v2, 0x7f0903dc

    .line 317
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 319
    const-string/jumbo v1, "neg_btn_str_res"

    .line 320
    const/high16 v2, 0x1040000

    .line 319
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 321
    const-string/jumbo v1, "type"

    .line 322
    const/4 v2, 0x3

    .line 321
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 324
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mInformativeDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    .line 325
    iget-object v1, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mInformativeDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 326
    iget-object v1, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mInformativeDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->setCancelable(Z)V

    .line 327
    iget-object v1, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mInformativeDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method private showRationaleDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "okListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    return-void

    .line 282
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string/jumbo v1, "message_title"

    .line 285
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mAppContactsLabel:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f0903cb

    invoke-virtual {p0, v3, v2}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string/jumbo v1, "massage_sub_title"

    .line 287
    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mAppContactsLabel:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f0903cc

    invoke-virtual {p0, v3, v2}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string/jumbo v1, "pos_btn_str_res"

    .line 289
    const v2, 0x104000a

    .line 288
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 290
    const-string/jumbo v1, "neg_btn_str_res"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    const-string/jumbo v1, "type"

    .line 292
    const/4 v2, 0x2

    .line 291
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 294
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mRationaleDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    .line 295
    iget-object v1, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mRationaleDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 296
    iget-object v1, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mRationaleDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->setPositiveListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 297
    iget-object v1, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mRationaleDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->setCancelable(Z)V

    .line 298
    iget-object v1, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mRationaleDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method private showWelcomeDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "okListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v3, 0x0

    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    return-void

    .line 256
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 257
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string/jumbo v1, "message_title"

    .line 259
    const v2, 0x7f0903c9

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string/jumbo v1, "pos_btn_str_res"

    .line 261
    const v2, 0x104000a

    .line 260
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    const-string/jumbo v1, "neg_btn_str_res"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 263
    const-string/jumbo v1, "type"

    .line 264
    const/4 v2, 0x1

    .line 263
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mWelcomeDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    .line 267
    iget-object v1, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mWelcomeDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 268
    iget-object v1, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mWelcomeDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->setPositiveListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 269
    iget-object v1, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mWelcomeDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->setCancelable(Z)V

    .line 270
    iget-object v1, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mWelcomeDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method protected static startPermissionActivity(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requiredPermissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 113
    .local p2, "newActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->getAllDeniedPermissionsFromGrps(Landroid/app/Activity;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "needPermissions":[Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "previous_intent"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 118
    const-string/jumbo v2, "IS_WELCOME_DIALOG_NEEDED"

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 120
    const/high16 v2, 0x2000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 123
    const/4 v2, 0x1

    return v2

    .line 130
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    .line 131
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method protected abstract getRequiredPermissions()[Ljava/lang/String;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09005b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mAppContactsLabel:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "previous_intent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mPreviousActivityIntent:Landroid/content/Intent;

    .line 84
    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->getPreference(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "IS_WELCOME_DIALOG_NEEDED"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    const-class v2, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->requestPermissions()V

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 88
    const v2, 0x7f0903ca

    .line 87
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "message":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    new-instance v1, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase$1;-><init>(Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;)V

    .line 90
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->showWelcomeDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 332
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 333
    iput-object v0, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mRationaleDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    .line 334
    iput-object v0, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mInformativeDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    .line 335
    iput-object v0, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mWelcomeDialog:Lcom/sonyericsson/android/socialphonebook/permissions/PermissionAlertDialogFragment;

    .line 331
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "deniedPermissionGrps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .end local v0    # "deniedPermissionGrps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_2

    .line 139
    aget v3, p3, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 140
    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 144
    :cond_0
    aget-object v3, p2, v1

    .line 143
    invoke-static {p0, v3}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->getPermissionGroupName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_2
    if-eqz p2, :cond_4

    array-length v3, p2

    if-lez v3, :cond_4

    .line 149
    invoke-direct {p0, p2, p3}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->isAllGranted([Ljava/lang/String;[I)Z

    move-result v3

    .line 148
    if-eqz v3, :cond_4

    .line 150
    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->setPreference(Landroid/content/Context;Z)V

    .line 151
    iget-object v3, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mPreviousActivityIntent:Landroid/content/Intent;

    const/high16 v4, 0x10000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 152
    iget-object v3, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mPreviousActivityIntent:Landroid/content/Intent;

    const/high16 v4, 0x2000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 153
    iget-object v3, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->finish()V

    .line 155
    invoke-virtual {p0, v5, v5}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->overridePendingTransition(II)V

    .line 136
    :cond_3
    :goto_1
    return-void

    .line 157
    :cond_4
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 158
    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->setPreference(Landroid/content/Context;Z)V

    .line 160
    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->createRationalemessage(Landroid/content/Context;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "rationaleMessage":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->showInformativeDialog(Ljava/lang/String;)V

    goto :goto_1
.end method
