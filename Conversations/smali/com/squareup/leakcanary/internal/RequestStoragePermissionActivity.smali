.class public Lcom/squareup/leakcanary/internal/RequestStoragePermissionActivity;
.super Landroid/app/Activity;
.source "RequestStoragePermissionActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 47
    invoke-virtual {p0, v1}, Lcom/squareup/leakcanary/internal/RequestStoragePermissionActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 50
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    .local v0, "permissions":[Ljava/lang/String;
    const/16 v1, 0x2a

    .line 53
    invoke-virtual {p0, v0, v1}, Lcom/squareup/leakcanary/internal/RequestStoragePermissionActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 55
    .end local v0    # "permissions":[Ljava/lang/String;
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/RequestStoragePermissionActivity;->finish()V

    goto :goto_0
.end method
