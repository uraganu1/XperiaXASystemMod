.class Lcom/android/settings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;
.super Landroid/os/AsyncTask;
.source "AdvancedAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AdvancedAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountAppsWithOverlayPermission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/settings/applications/AppStateOverlayBridge;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field numOfPackagesRequestedPermission:I

.field final synthetic this$0:Lcom/android/settings/applications/AdvancedAppSettings;


# virtual methods
.method protected varargs doInBackground([Lcom/android/settings/applications/AppStateOverlayBridge;)Ljava/lang/Integer;
    .locals 2
    .param p1, "params"    # [Lcom/android/settings/applications/AppStateOverlayBridge;

    .prologue
    .line 153
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 154
    .local v0, "overlayBridge":Lcom/android/settings/applications/AppStateOverlayBridge;
    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateOverlayBridge;->getNumberOfPackagesWithPermission()I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;->numOfPackagesRequestedPermission:I

    .line 156
    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateOverlayBridge;->getNumberOfPackagesCanDrawOverlay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 152
    check-cast p1, [Lcom/android/settings/applications/AppStateOverlayBridge;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;->doInBackground([Lcom/android/settings/applications/AppStateOverlayBridge;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;->this$0:Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-virtual {v0}, Lcom/android/settings/applications/AdvancedAppSettings;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/settings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;->this$0:Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-static {v0}, Lcom/android/settings/applications/AdvancedAppSettings;->-get1(Lcom/android/settings/applications/AdvancedAppSettings;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;->this$0:Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Lcom/android/settings/applications/AdvancedAppSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 164
    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 165
    iget v3, p0, Lcom/android/settings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;->numOfPackagesRequestedPermission:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 164
    const v3, 0x7f0b0b9c

    .line 163
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 160
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
