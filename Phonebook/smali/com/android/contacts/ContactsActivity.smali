.class public abstract Lcom/android/contacts/ContactsActivity;
.super Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;
.source "ContactsActivity.java"

# interfaces
.implements Lcom/android/contacts/ContactSaveService$Listener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field protected mIsDualPane:Z

.field protected mIsRecreatedInstance:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/android/contacts/ContactsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactsActivity;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 63
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, "service":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 72
    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    sget-object v0, Lcom/android/contacts/ContactsActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 81
    invoke-static {p0}, Lcom/android/contacts/ContactSaveService;->registerListener(Lcom/android/contacts/ContactSaveService$Listener;)V

    .line 82
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    sget-object v0, Lcom/android/contacts/ContactsActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 86
    return-void

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/ContactsActivity;->mIsDualPane:Z

    .line 90
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/ContactsActivity;->mIsRecreatedInstance:Z

    .line 91
    sget-object v0, Lcom/android/contacts/ContactsActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 79
    return-void

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 96
    invoke-static {p0}, Lcom/android/contacts/ContactSaveService;->unregisterListener(Lcom/android/contacts/ContactSaveService$Listener;)V

    .line 98
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/analytics/AbstractTrackingActivity;->onDestroy()V

    .line 95
    return-void
.end method

.method public onServiceCompleted(Landroid/content/Intent;)V
    .locals 3
    .param p1, "callbackIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 103
    sget-object v1, Lcom/android/contacts/ContactsActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "deleteSimContactStarted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/android/contacts/ContactsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 108
    const v1, 0x7f090137

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {p0, v2, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 119
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/contacts/ContactsActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 102
    return-void

    .line 110
    :cond_1
    const-string/jumbo v1, "deleteContactCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    invoke-static {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/ContactSaveUtil;->handleSaveIntentCallback(Landroid/content/Context;Landroid/content/Intent;)V

    .line 112
    iget-object v1, p0, Lcom/android/contacts/ContactsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/contacts/ContactsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 114
    iput-object v2, p0, Lcom/android/contacts/ContactsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method
