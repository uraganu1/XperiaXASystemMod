.class public Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;
.source "JapanDialingActivity.java"


# static fields
.field private static final ACTION_CALL_ACTIVITY_RESULT:I = 0x3e9


# instance fields
.field private mAdapter:Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;

.field private mCallIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 52
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 53
    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingActivity;->setResult(ILandroid/content/Intent;)V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingActivity;->finish()V

    .line 48
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 39
    const-string/jumbo v1, "japanDialingIntent"

    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingActivity;->mCallIntent:Landroid/content/Intent;

    .line 41
    const v0, 0x7f0400ac

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingActivity;->setContentView(I)V

    .line 42
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingActivity;->mCallIntent:Landroid/content/Intent;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingActivity;->mAdapter:Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingActivity;->mAdapter:Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    const v0, 0x7f09038d

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingActivity;->setTitle(I)V

    .line 32
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 60
    invoke-super/range {p0 .. p5}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 62
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingActivity;->mAdapter:Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;

    invoke-virtual {v1, p3}, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "selectedPhoneNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingActivity;->mCallIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingActivity;->mCallIntent:Landroid/content/Intent;

    const/16 v2, 0x3e9

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 59
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingActivity;->mCallIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingActivity;->startActivity(Landroid/content/Intent;)V

    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/icjp/JapanDialingActivity;->finish()V

    goto :goto_0
.end method
