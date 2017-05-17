.class public Lcom/android/contacts/common/activity/RequestPermissionsActivity;
.super Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;
.source "RequestPermissionsActivity.java"


# static fields
.field private static final REQUIRED_PERMISSIONS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const-class v0, Lcom/android/contacts/common/activity/RequestPermissionsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 33
    const-string/jumbo v1, "android.permission-group.CONTACTS"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 34
    const-string/jumbo v1, "android.permission-group.SMS"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 35
    const-string/jumbo v1, "android.permission-group.PHONE"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 32
    sput-object v0, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;-><init>()V

    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    sget-object v1, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 45
    sget-object v1, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    .line 46
    const-class v2, Lcom/android/contacts/common/activity/RequestPermissionsActivity;

    .line 45
    invoke-static {p0, v1, v2}, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->startPermissionActivity(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    .line 47
    .local v0, "ret":Z
    sget-object v1, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 48
    return v0
.end method


# virtual methods
.method protected getRequiredPermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method
