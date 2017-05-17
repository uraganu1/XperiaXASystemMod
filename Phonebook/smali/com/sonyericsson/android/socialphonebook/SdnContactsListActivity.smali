.class public Lcom/sonyericsson/android/socialphonebook/SdnContactsListActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;
.source "SdnContactsListActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/SdnContactsListActivity;->TAG:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "aIcicle"    # Landroid/os/Bundle;

    .prologue
    .line 24
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/SdnContactsListActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 25
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 32
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 33
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 35
    const/16 v1, 0xc

    .line 34
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 41
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;->newInstance(IZ)Lcom/sonyericsson/android/socialphonebook/SdnContactsListFragment;

    move-result-object v2

    .line 40
    const v3, 0x1020002

    .line 38
    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 23
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 47
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 49
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SdnContactsListActivity;->finish()V

    .line 51
    const/4 v1, 0x1

    return v1

    .line 54
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
