.class public Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;
.source "DeleteContactsProcessActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;
    }
.end annotation


# static fields
.field private static final DELETE_AT_ONCE:I = 0x14

.field private static final DELETE_INTERVAL:I = 0x32

.field private static final ERR_CANCEL:I = 0x1

.field private static final ERR_CANCEL_BY_ACTIVITY:I = 0x3

.field private static final ERR_NONE:I = 0x0

.field private static final ERR_UNKNOWN:I = 0x2

.field public static final EXTRA_CHECKED_IDS:Ljava/lang/String; = "checked_ids"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCheckedIds:[J

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDeleteTask:Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;)[J
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->mCheckedIds:[J

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->TAG:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;-><init>()V

    return-void
.end method

.method private deleteContacts()V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;-><init>(Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->mDeleteTask:Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->mDeleteTask:Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "aSavedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 83
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 91
    const-string/jumbo v1, "checked_ids"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->mCheckedIds:[J

    .line 95
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->deleteContacts()V

    .line 96
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->mDeleteTask:Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->mDeleteTask:Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity$DeleteTask;->cancelDelete()V

    .line 104
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onDestroy()V

    .line 100
    return-void
.end method

.method protected setTestContentResolver(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation build Lcom/sonyericsson/android/socialphonebook/legacy/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/DeleteContactsProcessActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 72
    return-void
.end method
